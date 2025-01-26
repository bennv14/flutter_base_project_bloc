
import 'package:dio/dio.dart';
import 'package:flutter_base_project_bloc/core/base/responses/base_response.dart';
import 'package:flutter_base_project_bloc/features/home/data/models/film_model.dart';
import 'package:retrofit/retrofit.dart';

part 'generated/film_api.g.dart';

@RestApi(baseUrl: 'https://phimapi.com')
abstract class FilmApi {
  factory FilmApi(Dio dio, {String baseUrl}) = _FilmApi;

  @GET('/danh-sach/phim-moi-cap-nhat')
  Future<BaseResponse<List<FilmModel>>> getNewsFilm([@Query('page') int? page]);

}
