library;

import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalStorage {
  static LocalStorage? _instance;
  static LocalStorage get instance => _instance ??= LocalStorage._init();

  LocalStorage._init();

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
    _secureStorage = const FlutterSecureStorage();
  }

  late final SharedPreferences _prefs;
  late final FlutterSecureStorage _secureStorage;
}
