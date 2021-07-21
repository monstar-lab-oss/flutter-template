import 'package:flutter_template/data/preferences/data_preferences.dart';
import 'package:flutter_template/data/user/preferenes/user_data_preferences.dart';
import 'package:flutter_template/dependencies/dependencies.dart';
import 'package:flutter_template/domain/user/user_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DataModule {
  static Future<void> inject() async {
    // TODO: Define your dependencies.

    final sharedPreferences = await SharedPreferences.getInstance();
    dependencies.registerLazySingleton<UserPreferences>(
      () => UserDataPreferences(
        DataPreferences('user', sharedPreferences),
      ),
    );
  }
}
