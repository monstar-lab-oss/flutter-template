import 'package:flutter_template/domain/use_case.dart';
import 'package:flutter_template/domain/user/entities/user.dart';
import 'package:flutter_template/domain/user/entities/user_credentials.dart';
import 'package:flutter_template/domain/user/user_api.dart';
import 'package:flutter_template/domain/user/user_preferences.dart';

class SignInUserUseCase extends InputUseCase<UserCredentials, Future<User>> {
  SignInUserUseCase(
    this.userApi,
    this.userPreferences,
  );

  final UserApi userApi;
  final UserPreferences userPreferences;

  @override
  Future<User> execute(UserCredentials input) async {
    if (!input.isValid) {
      throw ArgumentError('Invalid UserCredentials $input');
    }
    final user = await userApi.postUserSignIn(input);
    await userPreferences.setUser(user);
    return user;
  }
}
