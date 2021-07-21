import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_sign_in_response.freezed.dart';

part 'user_sign_in_response.g.dart';

@freezed
abstract class UserSignInResponse with _$UserSignInResponse {
  const factory UserSignInResponse({
    required String name,
    required String accessToken,
    required String refreshToken,
  }) = _UserSignInResponse;

  factory UserSignInResponse.fromJson(Map<String, dynamic> json) =>
      _$UserSignInResponseFromJson(json);
}
