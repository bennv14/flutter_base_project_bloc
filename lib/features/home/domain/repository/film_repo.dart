import 'package:flutter_base_project_bloc/features/home/data/models/film_model.dart';

abstract class FilmRepo {
  Future<List<FilmModel>> getNewsFilm([int? page]);
}