import 'package:flutter_template/domain/authentication/entities/authentication_status.dart';

abstract class AuthenticationRepository {
  Future<void> setAuthenticationStatus(AuthenticationStatus status);

  Future<AuthenticationStatus?> getAuthenticationStatus();

  Stream<AuthenticationStatus> getAuthenticationStatusStream();

  Future<void> clear();
}
