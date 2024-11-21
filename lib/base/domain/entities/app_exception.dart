import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_base_project_riverpod/l10n/generated/l10n.dart';

enum AppExceptionType {
  unknown,
  network,
  server,
  timeout,
  unauthorized,
  appError,
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

  @override
  String toString() {
    return '${type.name}: $message';
  }
}
