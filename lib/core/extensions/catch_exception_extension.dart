import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:share_kun/core/error/exceptions.dart';

extension CatchException<R> on Future<R> {
  Future<R> withRemoteHandling({String tag = 'DioError'}) async {
    try {
      final res = await this;
      return res;
    } on DioException catch (e) {
      String? serverMessage;

      switch (e.response?.data) {
        case Map<String, dynamic> data:
          serverMessage = data['message'] as String?;
          break;
        default:
          break;
      }

      final fallbackMessage = () {
        switch (e.type) {
          case DioExceptionType.connectionTimeout:
          case DioExceptionType.sendTimeout:
          case DioExceptionType.receiveTimeout:
            return 'Connection timeout. Please try again.';
          case DioExceptionType.connectionError:
            return 'No internet connection.';
          case DioExceptionType.badResponse:
            return 'Server error. Please try again later.';
          default:
            return 'Something went wrong. Please try again.';
        }
      }();

      debugPrint('''
        DioError [$tag]
        URI        : ${e.requestOptions.uri}
        Method     : ${e.requestOptions.method}
        StatusCode : ${e.response?.statusCode}
        Message    : ${e.message}
        Response   : ${e.response?.data}
      ''');

      throw ServerException(serverMessage ?? fallbackMessage);
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
