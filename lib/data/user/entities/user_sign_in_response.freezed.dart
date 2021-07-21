// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_sign_in_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserSignInResponse _$UserSignInResponseFromJson(Map<String, dynamic> json) {
  return _UserSignInResponse.fromJson(json);
}

/// @nodoc
class _$UserSignInResponseTearOff {
  const _$UserSignInResponseTearOff();

  _UserSignInResponse call(
      {required String name,
      required String accessToken,
      required String refreshToken}) {
    return _UserSignInResponse(
      name: name,
      accessToken: accessToken,
      refreshToken: refreshToken,
    );
  }

  UserSignInResponse fromJson(Map<String, Object> json) {
    return UserSignInResponse.fromJson(json);
  }
}

/// @nodoc
const $UserSignInResponse = _$UserSignInResponseTearOff();

/// @nodoc
mixin _$UserSignInResponse {
  String get name => throw _privateConstructorUsedError;
  String get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserSignInResponseCopyWith<UserSignInResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSignInResponseCopyWith<$Res> {
  factory $UserSignInResponseCopyWith(
          UserSignInResponse value, $Res Function(UserSignInResponse) then) =
      _$UserSignInResponseCopyWithImpl<$Res>;
  $Res call({String name, String accessToken, String refreshToken});
}

/// @nodoc
class _$UserSignInResponseCopyWithImpl<$Res>
    implements $UserSignInResponseCopyWith<$Res> {
  _$UserSignInResponseCopyWithImpl(this._value, this._then);

  final UserSignInResponse _value;
  // ignore: unused_field
  final $Res Function(UserSignInResponse) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserSignInResponseCopyWith<$Res>
    implements $UserSignInResponseCopyWith<$Res> {
  factory _$UserSignInResponseCopyWith(
          _UserSignInResponse value, $Res Function(_UserSignInResponse) then) =
      __$UserSignInResponseCopyWithImpl<$Res>;
  @override
  $Res call({String name, String accessToken, String refreshToken});
}

/// @nodoc
class __$UserSignInResponseCopyWithImpl<$Res>
    extends _$UserSignInResponseCopyWithImpl<$Res>
    implements _$UserSignInResponseCopyWith<$Res> {
  __$UserSignInResponseCopyWithImpl(
      _UserSignInResponse _value, $Res Function(_UserSignInResponse) _then)
      : super(_value, (v) => _then(v as _UserSignInResponse));

  @override
  _UserSignInResponse get _value => super._value as _UserSignInResponse;

  @override
  $Res call({
    Object? name = freezed,
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_UserSignInResponse(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserSignInResponse implements _UserSignInResponse {
  const _$_UserSignInResponse(
      {required this.name,
      required this.accessToken,
      required this.refreshToken});

  factory _$_UserSignInResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_UserSignInResponseFromJson(json);

  @override
  final String name;
  @override
  final String accessToken;
  @override
  final String refreshToken;

  @override
  String toString() {
    return 'UserSignInResponse(name: $name, accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserSignInResponse &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality()
                    .equals(other.refreshToken, refreshToken)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(refreshToken);

  @JsonKey(ignore: true)
  @override
  _$UserSignInResponseCopyWith<_UserSignInResponse> get copyWith =>
      __$UserSignInResponseCopyWithImpl<_UserSignInResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserSignInResponseToJson(this);
  }
}

abstract class _UserSignInResponse implements UserSignInResponse {
  const factory _UserSignInResponse(
      {required String name,
      required String accessToken,
      required String refreshToken}) = _$_UserSignInResponse;

  factory _UserSignInResponse.fromJson(Map<String, dynamic> json) =
      _$_UserSignInResponse.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get accessToken => throw _privateConstructorUsedError;
  @override
  String get refreshToken => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserSignInResponseCopyWith<_UserSignInResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
