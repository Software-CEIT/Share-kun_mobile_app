import 'package:shared_preferences/shared_preferences.dart';
import 'package:injectable/injectable.dart';
import 'package:share_kun/core/constants/constants.dart';

@lazySingleton
class SharedPreferenceService {
  final SharedPreferences _preferences;

  SharedPreferenceService(this._preferences);

  // Token management
  String? getToken() => _preferences.getString(PrefKeys.token);

  Future<bool> setToken(String value) =>
      _preferences.setString(PrefKeys.token, value);

  Future<bool> removeToken() => _preferences.remove(PrefKeys.token);

  // Save String
  Future<bool> setString(String key, String value) async {
    return await _preferences.setString(key, value);
  }

  // Get String
  String? getString(String key) {
    return _preferences.getString(key);
  }

  // Save Int
  Future<bool> setInt(String key, int value) async {
    return await _preferences.setInt(key, value);
  }

  // Get Int
  int? getInt(String key) {
    return _preferences.getInt(key);
  }

  // Save Bool
  Future<bool> setBool(String key, bool value) async {
    return await _preferences.setBool(key, value);
  }

  // Get Bool
  bool? getBool(String key) {
    return _preferences.getBool(key);
  }

  // Save Double
  Future<bool> setDouble(String key, double value) async {
    return await _preferences.setDouble(key, value);
  }

  // Get Double
  double? getDouble(String key) {
    return _preferences.getDouble(key);
  }

  // Save String List
  Future<bool> setStringList(String key, List<String> value) async {
    return await _preferences.setStringList(key, value);
  }

  // Get String List
  List<String>? getStringList(String key) {
    return _preferences.getStringList(key);
  }

  // Remove specific key
  Future<bool> remove(String key) async {
    return await _preferences.remove(key);
  }

  // Clear all data
  Future<bool> clear() async {
    return await _preferences.clear();
  }

  // Check if key exists
  bool containsKey(String key) {
    return _preferences.containsKey(key);
  }

  // Get all keys
  Set<String> getKeys() {
    return _preferences.getKeys();
  }
}
