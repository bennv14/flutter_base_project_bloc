import 'package:dio/dio.dart';
import 'package:flutter_base_project_bloc/core/base/responses/base_response.dart';
import 'package:flutter_base_project_bloc/features/demo_base_screen/data/models/film_model.dart';
import 'package:retrofit/retrofit.dart';

part 'generated/film_api.g.dart';

@RestApi()
abstract class FilmApi {
  factory FilmApi(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _FilmApi;

  @GET('/danh-sach/phim-moi-cap-nhat')
  Future<BaseResponse<List<FilmModel>>> getNewsFilm(
    @Query('page') int? page,
  );
}
