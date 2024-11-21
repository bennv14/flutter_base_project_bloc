import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_project_riverpod/features/details/presentation/details_screen.dart';
import 'package:flutter_base_project_riverpod/routes/app_router.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
