import 'package:flutter_base_project_bloc/features/demo_base_screen/data/models/film_model.dart';

abstract class FilmRepo {
  Future<List<FilmModel>> getNewsFilm([int? page]);
}
