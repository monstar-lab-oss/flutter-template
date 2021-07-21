import 'package:flutter_template/domain/user/entities/user.dart';
import 'package:flutter_template/domain/user/entities/user_credentials.dart';

abstract class UserApi {

  Future<User> postUserSignIn(UserCredentials credentials);

  Future<User> getUser();
}
