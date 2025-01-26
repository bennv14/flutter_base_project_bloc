import 'package:dio/dio.dart';
import 'package:flutter_base_project_bloc/base/exceptions/my_dio_exceptions.dart';

class MyExceptions implements Exception {
  final String message;
  final StackTrace? stackTrace;
  final Object? error;

  MyExceptions({
    required this.message,
    this.stackTrace,
    this.error,
  });

  factory MyExceptions.fromException(Exception exception) {
    if(exception is DioException){
     return MyDioExceptions.fromDioException(exception); 
    }
    return MyExceptions(message: exception.toString());
  }

  @override
  String toString() {
    return message;
  }
}