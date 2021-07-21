import 'dart:convert';

import 'package:flutter_template/domain/preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DataPreferences implements Preferences {
  /// A key value data store.
  ///
  /// @param name A unique name.
  DataPreferences(
    this._name,
    this._sharedPreferences,
  );

  final String _name;

  final SharedPreferences _sharedPreferences;

  @override
  String get name => _name;

  @override
  Future<void> setJson(String key, Map<String, dynamic> value) async {
    final jsonString = json.encode(value);
    await setString(key, jsonString);
  }

  @override
  Future<Map<String, dynamic>?> getJson(String key) async {
    final jsonString = await getString(key);
    if (jsonString == null) return null;
    return jsonDecode(jsonString);
  }

  @override
  Future<void> setString(String key, String value) async {
    _sharedPreferences.setString('${name}_$key', value);
  }

  @override
  Future<String?> getString(String key) async {
    return _sharedPreferences.getString('${name}_$key');
  }

  @override
  Future<void> setBoolean(String key, bool value) async {
    _sharedPreferences.setBool('${name}_$key', value);
  }

  @override
  Future<bool?> getBoolean(String key) async {
    return _sharedPreferences.getBool('${name}_$key');
  }

  @override
  Future<void> setDouble(String key, double value) async {
    _sharedPreferences.setDouble('${name}_$key', value);
  }

  @override
  Future<double?> getDouble(String key) async {
    return _sharedPreferences.getDouble('${name}_$key');
  }

  @override
  Future<void> setInt(String key, int value) async {
    _sharedPreferences.setInt('${name}_$key', value);
  }

  @override
  Future<int?> getInt(String key) async {
    return _sharedPreferences.getInt('${name}_$key');
  }

  @override
  Future<void> clear() async {
    final keys = _sharedPreferences.getKeys().where((key) {
      return key.startsWith(name);
    });
    await Future.forEach(keys, (String key) async {
      await _sharedPreferences.remove(key);
    });
  }
}
