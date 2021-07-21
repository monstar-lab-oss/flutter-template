import 'package:flutter_template/domain/user/entities/user.dart';
import 'package:flutter_template/domain/user/entities/user_credentials.dart';
import 'package:flutter_template/domain/user/user_api.dart';

class UserMockApi extends UserApi {
  User get _user => User(
        name: 'Tim Apple',
      );

  @override
  Future<User> getUser() async {
    return _user;
  }

  @override
  Future<User> postUserSignIn(UserCredentials credentials) async {
    return _user;
  }
}
