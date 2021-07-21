import 'package:flutter_template/domain/authentication/entities/email.dart';
import 'package:flutter_template/domain/authentication/entities/password.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_credentials.freezed.dart';

@freezed
abstract class UserCredentials with _$UserCredentials {
  const UserCredentials._();

  const factory UserCredentials({
    required Email email,
    required Password password,
  }) = _UserCredentials;

  factory UserCredentials.empty() => UserCredentials(
        email: Email.empty(),
        password: Password.empty(),
      );

  bool get isValid => email.isValid && password.isValid;
}
