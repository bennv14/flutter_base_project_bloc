import 'package:flutter_base_project_bloc/features/demo_base_screen/data/models/film_model.dart';
import 'package:flutter_base_project_bloc/features/demo_base_screen/data/source/film_api.dart';
import 'package:flutter_base_project_bloc/features/demo_base_screen/domain/repository/film_repo.dart';

class FilmRepoImpl implements FilmRepo {
  final FilmApi _filmApi;

  FilmRepoImpl(this._filmApi);

  @override
  Future<List<FilmModel>> getNewsFilm([int? page]) async {
    try {
      final response = await _filmApi.getNewsFilm(page);
      // log(response.data.toString());
      return response.data ?? [];
    } catch (e) {
      return <FilmModel>[];
    }
  }
}
