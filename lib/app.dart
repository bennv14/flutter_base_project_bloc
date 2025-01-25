import 'package:flutter/material.dart';
import 'package:flutter_base_project_bloc/routes/app_navigation.dart';
import 'package:flutter_base_project_bloc/utils/gen/colors.gen.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    N.init();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: N.appRouter.config(),
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
