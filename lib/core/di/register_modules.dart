import 'package:share_kun/core/constants/api_path.dart';
import 'package:share_kun/core/network/network_call.dart';
import 'package:share_kun/router/app_router.dart';
import 'package:share_kun/router/guards/authentication_guard.dart';
import 'package:share_kun/service/interceptor_service.dart';
import 'package:share_kun/service/shared_preference_service.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

@module
abstract class InjectionModule {
  @lazySingleton
  AppRouter appRouter(SharedPreferenceService sharedPreferenceService) {
    return AppRouter(authGuard: AuthGuard());
  }

  @lazySingleton
  Dio dio(SharedPreferenceService sharedPreferenceService, AppRouter appRouter) {
    final dio = Dio(
      BaseOptions(
        baseUrl: ApiPath.baseUrl,
        sendTimeout: const Duration(seconds: 10),
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 30),
        contentType: 'application/json',
      ),
    );
    dio.interceptors.add(InterceptorService(sharedPreferenceService, appRouter));
    return dio;
  }

  @lazySingleton
  RestClient restClient(Dio dio) => RestClient(dio);

  @lazySingleton
  AuthGuard authGuard() => AuthGuard();

  @preResolve
  Future<SharedPreferences> sharedPreferences() =>
      SharedPreferences.getInstance();

  @preResolve
  Future<PackageInfo> packageInfo() => PackageInfo.fromPlatform();

  @lazySingleton
  FlutterSecureStorage flutterSecureStorage() => const FlutterSecureStorage(
        aOptions: AndroidOptions(encryptedSharedPreferences: true),
        iOptions: IOSOptions(accessibility: KeychainAccessibility.first_unlock),
      );
}
