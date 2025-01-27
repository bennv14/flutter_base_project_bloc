import 'package:flutter_base_project_bloc/core/base/controller/binding.dart';
import 'package:flutter_base_project_bloc/di/api_biding.dart';
import 'package:flutter_base_project_bloc/di/repo_binding.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

class AppBinding extends Binding {
  @override
  Future<void> dependencies() async {
    await ApiBiding().dependencies();
    await RepoBinding().dependencies();
    
  }
}