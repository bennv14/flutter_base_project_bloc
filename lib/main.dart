import 'package:flutter/material.dart';
import 'package:flutter_base_project_bloc/app.dart';
import 'package:flutter_base_project_bloc/base/data/datasource/local/local_storage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  LocalStorage.instance.init();
  runApp(const MyApp());
}
