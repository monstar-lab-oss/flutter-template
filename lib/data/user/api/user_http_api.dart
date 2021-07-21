import 'package:flutter_template/domain/user/entities/user.dart';
import 'package:flutter_template/domain/user/entities/user_credentials.dart';
import 'package:flutter_template/domain/user/user_api.dart';

class UserHttpApi extends UserApi {
  @override
  Future<User> getUser() {
    // TODO: implement getUser
    throw UnimplementedError();
  }

  @override
  Future<User> postUserSignIn(UserCredentials credentials) {
    // TODO: implement postUserSignIn
    throw UnimplementedError();
  }
}
