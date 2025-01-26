import 'package:flutter_base_project_bloc/base/exceptions/my_exceptions.dart';
import 'package:dio/dio.dart';
import 'package:flutter_base_project_bloc/l10n/generated/l10n.dart';

class MyDioExceptions extends MyExceptions {
  final int? httpCode;
  final String? uri;

  MyDioExceptions({
    required super.message,
    this.httpCode,
    this.uri,
    super.stackTrace,
    super.error,
  });

  factory MyDioExceptions.fromDioException(DioException exception) {
    exception.type;
    return MyDioExceptions(
      message: exception.message??S.current.unknown_error,
      uri: exception.response?.realUri.toString(),
      httpCode: exception.response?.statusCode,
      stackTrace: exception.stackTrace,
      error: exception.error,
    );
  }
}