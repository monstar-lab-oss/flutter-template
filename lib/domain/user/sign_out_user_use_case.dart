import 'package:flutter_template/domain/use_case.dart';
import 'package:flutter_template/domain/user/entities/user.dart';
import 'package:flutter_template/domain/user/entities/user_credentials.dart';
import 'package:flutter_template/domain/user/user_api.dart';
import 'package:flutter_template/domain/user/user_preferences.dart';

class SignOutUserUseCase extends UseCase<Future<void>> {
  SignOutUserUseCase(
    this.userPreferences,
  );

  final UserPreferences userPreferences;

  @override
  Future<void> execute() async {
    await userPreferences.clear();
  }
}
