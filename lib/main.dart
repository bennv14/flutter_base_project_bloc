import 'package:flutter/material.dart';
import 'package:flutter_base_project_riverpod/app.dart';
import 'package:flutter_base_project_riverpod/base/data/datasource/local/local_storage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  LocalStorage.instance.init();
  runApp(const MyApp());
}
