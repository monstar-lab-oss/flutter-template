// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_sign_in_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserSignInResponse _$_$_UserSignInResponseFromJson(
    Map<String, dynamic> json) {
  return _$_UserSignInResponse(
    name: json['name'] as String,
    accessToken: json['accessToken'] as String,
    refreshToken: json['refreshToken'] as String,
  );
}

Map<String, dynamic> _$_$_UserSignInResponseToJson(
        _$_UserSignInResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
