import 'package:flutter_template/domain/preferences.dart';
import 'package:flutter_template/domain/user/entities/user.dart';
import 'package:flutter_template/domain/user/user_preferences.dart';

const _userKey = 'user';

class UserDataPreferences implements UserPreferences {
  UserDataPreferences(this.preferences);

  final Preferences preferences;

  @override
  Future<User?> getUser() async {
    final userJson = await preferences.getJson(_userKey);
    if (userJson == null) return null;
    return User.fromJson(userJson);
  }

  @override
  Future<void> setUser(User user) async {
    await preferences.setJson(_userKey, user.toJson());
  }

  @override
  Future<void> clear() async {
    await preferences.clear();
  }
}
