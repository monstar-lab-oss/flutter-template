import 'package:freezed_annotation/freezed_annotation.dart';

part 'password.freezed.dart';

@freezed
class Password with _$Password {
  const Password._();

  const factory Password(
    String value, {
    @Default(8) int requiredLength,
  }) = _Password;

  factory Password.empty() => const Password('');

  bool get hasMinimumLength => value.length >= requiredLength;

  bool get hasLowerCaseLetter => RegExp(r'^.*[a-z].*$').hasMatch(value);

  bool get hasUpperCaseLetter => RegExp(r'^.*[A-Z].*$').hasMatch(value);

  bool get hasNumber => RegExp(r'^.*[0-9].*$').hasMatch(value);

  bool get hasSpecialCharacter => RegExp(r'^.*[^a-zA-Z0-9].*$').hasMatch(value);

  bool get isValid =>
      hasMinimumLength &&
      hasLowerCaseLetter &&
      hasUpperCaseLetter &&
      hasNumber &&
      hasSpecialCharacter;
}
