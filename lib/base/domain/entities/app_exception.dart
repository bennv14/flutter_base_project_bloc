import 'package:dio/dio.dart';
import 'package:flutter_base_project_bloc/l10n/generated/l10n.dart';

enum AppExceptionType {
  unknown,
  network,
  server,
  timeout,
  unauthorized,
  appError,
  appException
}

class AppException implements Exception, Error {
  final AppExceptionType type;
  final String message;
  final dynamic error;
  final String? title;
  final int? headerCode;
  @override
  final StackTrace? stackTrace;

  static Map<String, String> serverErrors = {};

  AppException(
    this.type,
    this.message, {
    this.error,
    this.title,
    this.headerCode,
    this.stackTrace,
  });

  factory AppException.fromError(Error error) {
    return AppException(
      AppExceptionType.appError,
      S.current.error,
      error: error,
      headerCode: null,
      stackTrace: error.stackTrace,
    );
  }

  factory AppException.fromException(Exception exception) {
    return AppException(
      AppExceptionType.appException,
      S.current.error,
      error: exception,
      headerCode: null,
      stackTrace: null,
    );
  }

  factory AppException.fromDioException(DioException error) {
    return AppException(
      AppExceptionType.network,
      S.current.error,
      error: error,
      headerCode: error.response?.statusCode,
      stackTrace: error.stackTrace,
    );
  }

  @override
  String toString() {
    return '${type.name}: $message';
  }
}
