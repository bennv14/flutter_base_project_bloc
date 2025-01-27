import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_project_bloc/di/app_binding.dart';
import 'package:flutter_base_project_bloc/features/home/domain/repository/film_repo.dart';
import 'package:flutter_base_project_bloc/routes/app_router.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    getIt.get<FilmRepo>().getNewsFilm();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('Home'),
            ElevatedButton(
              onPressed: () {
                context.router.navigate(const DetailsRoute());
              },
              child: Text("to Details"),
            ),
          ],
        ),
      ),
    );
  }
}
