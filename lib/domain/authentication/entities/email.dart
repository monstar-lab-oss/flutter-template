import 'package:freezed_annotation/freezed_annotation.dart';

part 'email.freezed.dart';

@freezed
class Email with _$Email {
  const Email._();

  const factory Email(String value) = _Email;

  factory Email.empty() => const Email('');

  bool get isValid => value.isNotEmpty;
}
