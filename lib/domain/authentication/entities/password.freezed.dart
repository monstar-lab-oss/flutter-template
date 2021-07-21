// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'password.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PasswordTearOff {
  const _$PasswordTearOff();

  _Password call(String value, {int requiredLength = 8}) {
    return _Password(
      value,
      requiredLength: requiredLength,
    );
  }
}

/// @nodoc
const $Password = _$PasswordTearOff();

/// @nodoc
mixin _$Password {
  String get value => throw _privateConstructorUsedError;
  int get requiredLength => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PasswordCopyWith<Password> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordCopyWith<$Res> {
  factory $PasswordCopyWith(Password value, $Res Function(Password) then) =
      _$PasswordCopyWithImpl<$Res>;
  $Res call({String value, int requiredLength});
}

/// @nodoc
class _$PasswordCopyWithImpl<$Res> implements $PasswordCopyWith<$Res> {
  _$PasswordCopyWithImpl(this._value, this._then);

  final Password _value;
  // ignore: unused_field
  final $Res Function(Password) _then;

  @override
  $Res call({
    Object? value = freezed,
    Object? requiredLength = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      requiredLength: requiredLength == freezed
          ? _value.requiredLength
          : requiredLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$PasswordCopyWith<$Res> implements $PasswordCopyWith<$Res> {
  factory _$PasswordCopyWith(_Password value, $Res Function(_Password) then) =
      __$PasswordCopyWithImpl<$Res>;
  @override
  $Res call({String value, int requiredLength});
}

/// @nodoc
class __$PasswordCopyWithImpl<$Res> extends _$PasswordCopyWithImpl<$Res>
    implements _$PasswordCopyWith<$Res> {
  __$PasswordCopyWithImpl(_Password _value, $Res Function(_Password) _then)
      : super(_value, (v) => _then(v as _Password));

  @override
  _Password get _value => super._value as _Password;

  @override
  $Res call({
    Object? value = freezed,
    Object? requiredLength = freezed,
  }) {
    return _then(_Password(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      requiredLength: requiredLength == freezed
          ? _value.requiredLength
          : requiredLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Password extends _Password {
  const _$_Password(this.value, {this.requiredLength = 8}) : super._();

  @override
  final String value;
  @JsonKey(defaultValue: 8)
  @override
  final int requiredLength;

  @override
  String toString() {
    return 'Password(value: $value, requiredLength: $requiredLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Password &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.requiredLength, requiredLength) ||
                const DeepCollectionEquality()
                    .equals(other.requiredLength, requiredLength)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(requiredLength);

  @JsonKey(ignore: true)
  @override
  _$PasswordCopyWith<_Password> get copyWith =>
      __$PasswordCopyWithImpl<_Password>(this, _$identity);
}

abstract class _Password extends Password {
  const factory _Password(String value, {int requiredLength}) = _$_Password;
  const _Password._() : super._();

  @override
  String get value => throw _privateConstructorUsedError;
  @override
  int get requiredLength => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PasswordCopyWith<_Password> get copyWith =>
      throw _privateConstructorUsedError;
}
