// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_project_bloc/routes/app_router.dart';

@RoutePage()
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    log('${context.router.stack}');
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('Details'),
            ElevatedButton(
              onPressed: () {
                context.router.push(HomeRoute());
              },
              child: Text("to Home"),
            ),
            ElevatedButton(
              onPressed: () async {
                await context.router.navigate(HomeRoute());
                log('${context.router.stack}');
              },
              child: Text("Nav to Home"),
            ),
            ElevatedButton(
              onPressed: () {
                context.router.push(LoginRoute());
              },
              child: Text("to Login"),
            ),
            ElevatedButton(
              onPressed: () async {
                await context.router.navigate(LoginRoute());
                log('${context.router.stack}');
              },
              child: Text("Nav to Login"),
            ),
          ],
        ),
      ),
    );
  }
}
