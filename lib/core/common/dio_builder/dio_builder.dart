import 'package:dio/dio.dart';

class DioBuilder extends DioMixin implements Dio {
  static const String _contentType = 'application/json';
  static const int _connectionTimeOut = 1800; // 30 minutes
  static const int _receiveTimeOut = 1800;

  DioBuilder({
    List<Interceptor> interceptors = const [],
    required String baseUrl,
  }) {
    options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: Duration(seconds: _connectionTimeOut),
      receiveTimeout: Duration(seconds: _receiveTimeOut),
      headers: {
        'Content-Type': _contentType,
      },
    );

    this.interceptors.addAll(interceptors);

    httpClientAdapter = HttpClientAdapter();
  }
}
