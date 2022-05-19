// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'request_signup_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestSignupModel _$RequestSignupModelFromJson(Map<String, dynamic> json) {
  return _RequestSignupModel.fromJson(json);
}

/// @nodoc
mixin _$RequestSignupModel {
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestSignupModelCopyWith<RequestSignupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestSignupModelCopyWith<$Res> {
  factory $RequestSignupModelCopyWith(
          RequestSignupModel value, $Res Function(RequestSignupModel) then) =
      _$RequestSignupModelCopyWithImpl<$Res>;
  $Res call({String username, String email, String password});
}

/// @nodoc
class _$RequestSignupModelCopyWithImpl<$Res>
    implements $RequestSignupModelCopyWith<$Res> {
  _$RequestSignupModelCopyWithImpl(this._value, this._then);

  final RequestSignupModel _value;
  // ignore: unused_field
  final $Res Function(RequestSignupModel) _then;

  @override
  $Res call({
    Object? username = freezed,
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_RequestSignupModelCopyWith<$Res>
    implements $RequestSignupModelCopyWith<$Res> {
  factory _$$_RequestSignupModelCopyWith(_$_RequestSignupModel value,
          $Res Function(_$_RequestSignupModel) then) =
      __$$_RequestSignupModelCopyWithImpl<$Res>;
  @override
  $Res call({String username, String email, String password});
}

/// @nodoc
class __$$_RequestSignupModelCopyWithImpl<$Res>
    extends _$RequestSignupModelCopyWithImpl<$Res>
    implements _$$_RequestSignupModelCopyWith<$Res> {
  __$$_RequestSignupModelCopyWithImpl(
      _$_RequestSignupModel _value, $Res Function(_$_RequestSignupModel) _then)
      : super(_value, (v) => _then(v as _$_RequestSignupModel));

  @override
  _$_RequestSignupModel get _value => super._value as _$_RequestSignupModel;

  @override
  $Res call({
    Object? username = freezed,
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_RequestSignupModel(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestSignupModel implements _RequestSignupModel {
  const _$_RequestSignupModel(
      {required this.username, required this.email, required this.password});

  factory _$_RequestSignupModel.fromJson(Map<String, dynamic> json) =>
      _$$_RequestSignupModelFromJson(json);

  @override
  final String username;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'RequestSignupModel(username: $username, email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestSignupModel &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_RequestSignupModelCopyWith<_$_RequestSignupModel> get copyWith =>
      __$$_RequestSignupModelCopyWithImpl<_$_RequestSignupModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequestSignupModelToJson(this);
  }
}

abstract class _RequestSignupModel implements RequestSignupModel {
  const factory _RequestSignupModel(
      {required final String username,
      required final String email,
      required final String password}) = _$_RequestSignupModel;

  factory _RequestSignupModel.fromJson(Map<String, dynamic> json) =
      _$_RequestSignupModel.fromJson;

  @override
  String get username => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RequestSignupModelCopyWith<_$_RequestSignupModel> get copyWith =>
      throw _privateConstructorUsedError;
}
