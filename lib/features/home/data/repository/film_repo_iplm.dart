import 'package:flutter_base_project_bloc/core/base/exceptions/my_exceptions.dart';
import 'package:flutter_base_project_bloc/features/home/data/models/film_model.dart';
import 'package:flutter_base_project_bloc/features/home/data/source/film_api.dart';
import 'package:flutter_base_project_bloc/features/home/domain/repository/film_repo.dart';

class FilmRepoImpl implements FilmRepo {
  final FilmApi _filmApi;

  FilmRepoImpl(this._filmApi);

  @override
  Future<List<FilmModel>> getNewsFilm([int? page]) async {
    try {
      final response = await _filmApi.getNewsFilm(page);
      return response.data??[];
    } on Exception catch (e) {
      throw MyExceptions.fromException(e);
    }
  }
}
