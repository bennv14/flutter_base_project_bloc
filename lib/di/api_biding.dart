import 'package:flutter_base_project_bloc/core/base/controller/binding.dart';
import 'package:flutter_base_project_bloc/core/common/dio_builder/dio_builder.dart';
import 'package:flutter_base_project_bloc/core/common/dio_builder/dio_type.dart';
import 'package:flutter_base_project_bloc/core/common/dio_builder/interceptors/logger_interceptor.dart';
import 'package:flutter_base_project_bloc/core/common/dio_builder/retrofit_parse_error.dart';
import 'package:flutter_base_project_bloc/di/app_binding.dart';
import 'package:flutter_base_project_bloc/features/home/data/source/film_api.dart';
import 'package:retrofit/error_logger.dart';

class ApiBiding extends Binding {
  @override
  Future<void> dependencies() async {
    getIt.registerLazySingleton<ParseErrorLogger>(
      () => RetrofitParseError(),
    );

    getIt.registerLazySingleton<DioBuilder>(
      () => DioBuilder(
        baseUrl: 'https://phimapi.com/',
        interceptors: [
          LoggerInterceptor(),
        ],
      ),
      instanceName: DioType.normal.name,
    );

    getIt.registerLazySingleton<FilmApi>(
      () => FilmApi(
        getIt.get<DioBuilder>(
          instanceName: DioType.normal.name,
        ),
        // errorLogger: getIt.get<ParseErrorLogger>(),
      ),
    );
  }
}
