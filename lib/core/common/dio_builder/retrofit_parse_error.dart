import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

class RetrofitParseError implements ParseErrorLogger {
  @override
  void logError(
    Object error,
    StackTrace stackTrace,
    RequestOptions options,
  ) {
    log(
      'RetrofitParseError: $error \nStackTrace: $stackTrace \nOptions: $options',
    );
  }
}
