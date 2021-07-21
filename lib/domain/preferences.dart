abstract class Preferences {
  String get name;

  Future<void> setJson(String key, Map<String, dynamic> value);

  Future<Map<String, dynamic>?> getJson(String key);

  Future<void> setString(String key, String value);

  Future<String?> getString(String key);

  Future<void> setBoolean(String key, bool value);

  Future<bool?> getBoolean(String key);

  Future<void> setInt(String key, int value);

  Future<int?> getInt(String key);

  Future<void> setDouble(String key, double value);

  Future<double?> getDouble(String key);

  Future<void> clear();
}
