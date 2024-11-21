import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_project_riverpod/base/data/datasource/remote/repository_execute.dart';
import 'package:flutter_base_project_riverpod/features/home/data/source/film_api.dart';
import 'package:flutter_base_project_riverpod/routes/app_router.dart';
import 'package:flutter_base_project_riverpod/utils/gen/colors.gen.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

void getFilmList() {
  FilmApi filmApi = FilmApi(Dio());
  RepositoryExecute.execute(() => filmApi.getFilmList());
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    getFilmList();
    final AppRouter appRouter = AppRouter();
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter.config(),
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: ColorName.secondary,
        colorScheme: ColorScheme.fromSeed(
          seedColor: ColorName.primary,
          primary: ColorName.primary,
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}
