import 'package:flutter_base_project_bloc/core/base/controller/binding.dart';
import 'package:flutter_base_project_bloc/di/app_binding.dart';
import 'package:flutter_base_project_bloc/features/demo_base_screen/data/repository/film_repo_iplm.dart';
import 'package:flutter_base_project_bloc/features/demo_base_screen/domain/repository/film_repo.dart';

class RepoBinding extends Binding {
  @override
  Future<void> dependencies() async {
    getIt.registerLazySingleton<FilmRepo>(
      () => FilmRepoImpl(
        getIt.get(),
      ),
    );
  }
}
