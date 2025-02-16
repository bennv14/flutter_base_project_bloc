import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_base_project_bloc/core/common/extensions/date_time_ex.dart';

class LoggerInterceptor extends Interceptor {
  static JsonEncoder encoder = JsonEncoder.withIndent('  ');

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    _logRequest(options);
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    _logResponse(response);
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    _logError(err);
    super.onError(err, handler);
  }

  void _logError(DioException err) {
    log(
      '\n'
      'ERROR [${err.response?.statusCode}]\n'
      'URI: ${err.requestOptions.uri}\n'
      '$err\n',
      name: DateTime.now().toTimeString(),
    );
  }

  void _logResponse(Response response) {
    log(
      '\n'
      'RESPONSE [${response.statusCode}]\n'
      'URI: ${response.requestOptions.uri}\n'
      'Body: ${encoder.convert(response.data)}\n',
      name: DateTime.now().toTimeString(),
    );
  }

  void _logRequest(RequestOptions options) {
    final body = options.data;
    final headers = options.headers;
    final method = options.method;
    final url = options.baseUrl + options.path.substring(1);

    log(
      '\n'
      'REQUEST [$method]\n'
      'URI: $url\n'
      'Headers: \n${_mapToString(headers)}${body == null ? '\n' : 'Body: $body\n'}',
      name: DateTime.now().toTimeString(),
    );
  }

  String? _mapToString(Map<String, dynamic> map) {
    String? result;
    final String indent = '   ';
    for (final entry in map.entries) {
      if (result == null) {
        result = '$indent${entry.key}: ${entry.value}\n';
        continue;
      }
      result += '$indent${entry.key}: ${entry.value}\n';
    }

    return result;
  }
}
