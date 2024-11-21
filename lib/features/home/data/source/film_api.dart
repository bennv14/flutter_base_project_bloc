import 'package:dio/dio.dart';
import 'package:flutter_base_project_riverpod/base/data/models/data_state.dart';
import 'package:retrofit/http.dart';

part 'film_api.g.dart';

@RestApi(baseUrl: FilmApi.baseUrl)
abstract class FilmApi {
  static const String baseUrl = 'https://phimapi.com/danh-sach/';

  factory FilmApi(Dio dio, {String baseUrl}) = _FilmApi;
  @GET('/phim-moi-cap-nhat')
  Future<dynamic> getFilmList();
}
