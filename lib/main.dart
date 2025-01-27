import 'package:flutter/material.dart';
import 'package:flutter_base_project_bloc/app.dart';
import 'package:flutter_base_project_bloc/di/app_binding.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // LocalStorage.instance.init();
  await AppBinding().dependencies();
  runApp(const MyApp());
}
