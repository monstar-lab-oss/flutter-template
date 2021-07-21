import 'package:flutter_template/domain/user/entities/user.dart';

abstract class UserPreferences {
  Future<void> setUser(User user);

  Future<User?> getUser();

  Future<void> clear();
}
