import 'package:flutter/material.dart';
import 'package:flutter_base_project_riverpod/routes/app_router.dart';
import 'package:flutter_base_project_riverpod/utils/gen/colors.gen.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
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
