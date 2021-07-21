import 'dart:async';

import 'package:flutter_template/domain/authentication/authentication_repository.dart';
import 'package:flutter_template/domain/authentication/entities/authentication_status.dart';
import 'package:flutter_template/domain/preferences.dart';

const _authenticationStatusKey = 'authentication_status';

class AuthenticationDataRepository implements AuthenticationRepository {
  AuthenticationDataRepository(this.preferences);

  final Preferences preferences;

  final authenticationStatusController =
      StreamController<AuthenticationStatus>();

  @override
  Future<AuthenticationStatus?> getAuthenticationStatus() async {
    final authenticationStatusIndex =
        await preferences.getInt(_authenticationStatusKey);
    if (authenticationStatusIndex == null) return null;
    return AuthenticationStatus.values[authenticationStatusIndex];
  }

  @override
  Stream<AuthenticationStatus> getAuthenticationStatusStream() {
    return authenticationStatusController.stream;
  }

  @override
  Future<void> setAuthenticationStatus(AuthenticationStatus status) async {
    authenticationStatusController.add(status);
    await preferences.setInt(_authenticationStatusKey, status.index);
  }

  @override
  Future<void> clear() async {
    await preferences.clear();
    authenticationStatusController.close();
  }
}
