import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:share_kun/core/constants/api_path.dart';
import 'package:share_kun/core/constants/constants.dart';
import 'package:share_kun/router/app_router.dart';
import 'package:share_kun/service/shared_preference_service.dart';

var logger = Logger();

class InterceptorService extends Interceptor {
  final SharedPreferenceService _prefs;
  final AppRouter _router;
  bool _isRefreshing = false;

  InterceptorService(this._prefs, this._router);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final token = _prefs.getToken();

    // Authorization
    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
      logger.i("🔑 Authorization Header:\nBearer $token");
    }

    // Method & URL
    logger.t("➡️ Request: ${options.method} ${options.uri}");

    // Query Parameters
    if (options.queryParameters.isNotEmpty) {
      logger.i("🔍 Query Parameters:\n${options.queryParameters}");
    }

    // Body
    if (options.data != null) {
      logger.i("📝 Body:\n${options.data}");
    }

    logger.i("-----------------------------------");
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // Status & URL
    logger.t(
      "✅ Response: [${response.statusCode}] ${response.requestOptions.uri}",
    );

    // Body
    if (response.data != null) {
      logger.i("📦 Response Body:\n${response.data}");
    }

    logger.i("===================================");
    handler.next(response);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (err.response?.statusCode == 401 && !_isRefreshing) {
      _isRefreshing = true;
      try {
        final newToken = await _refreshToken();
        _isRefreshing = false;
        final opts = err.requestOptions;
        opts.headers['Authorization'] = 'Bearer $newToken';
        final retryDio = Dio(BaseOptions(baseUrl: ApiPath.baseUrl));
        final response = await retryDio.fetch(opts);
        return handler.resolve(response);
      } catch (_) {
        _isRefreshing = false;
        await _logout();
        return handler.next(err);
      }
    }

    String message = "Unexpected error";
    if (err.type == DioExceptionType.connectionTimeout) {
      message = "Connection timeout";
    } else if (err.type == DioExceptionType.receiveTimeout) {
      message = "Receive timeout";
    } else if (err.type == DioExceptionType.badResponse) {
      final statusCode = err.response?.statusCode ?? "unknown";
      final data = err.response?.data;
      final backendMessage = (data is Map)
          ? (data["message"]?.toString() ?? err.response?.statusMessage ?? "")
          : (err.response?.statusMessage ?? "");
      message =
          "Server error: $statusCode${backendMessage != '' ? ' - $backendMessage' : ''}";
    }

    logger.e(message);
    handler.next(
      DioException(
        requestOptions: err.requestOptions,
        error: message,
        type: err.type,
        response: err.response,
      ),
    );
  }

  Future<String> _refreshToken() async {
    final refreshTok = _prefs.getString(PrefKeys.refreshToken);
    if (refreshTok == null || refreshTok.isEmpty)
      throw Exception('No refresh token');
    final dio = Dio(
      BaseOptions(baseUrl: ApiPath.baseUrl, contentType: 'application/json'),
    );
    final response = await dio.post(
      ApiPath.refreshToken,
      data: {'refreshToken': refreshTok},
    );
    final accessToken = response.data['accessToken'] as String;
    final newRefresh = response.data['refreshToken'] as String;
    await _prefs.setToken(accessToken);
    await _prefs.setString(PrefKeys.refreshToken, newRefresh);
    return accessToken;
  }

  Future<void> _logout() async {
    await _prefs.removeToken();
    await _prefs.remove(PrefKeys.refreshToken);
    _router.replaceAll([const LoginRoute()]);
  }
}
