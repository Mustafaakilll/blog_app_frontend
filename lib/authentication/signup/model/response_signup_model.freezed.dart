// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_signup_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseSignupModel _$ResponseSignupModelFromJson(Map<String, dynamic> json) {
  return _ResponseSignupModel.fromJson(json);
}

/// @nodoc
mixin _$ResponseSignupModel {
  int get id => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String get bio => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseSignupModelCopyWith<ResponseSignupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseSignupModelCopyWith<$Res> {
  factory $ResponseSignupModelCopyWith(
          ResponseSignupModel value, $Res Function(ResponseSignupModel) then) =
      _$ResponseSignupModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String createdAt,
      String updatedAt,
      String username,
      String email,
      String? password,
      String bio,
      String image});
}

/// @nodoc
class _$ResponseSignupModelCopyWithImpl<$Res>
    implements $ResponseSignupModelCopyWith<$Res> {
  _$ResponseSignupModelCopyWithImpl(this._value, this._then);

  final ResponseSignupModel _value;
  // ignore: unused_field
  final $Res Function(ResponseSignupModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? bio = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
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
              as String?,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ResponseSignupModelCopyWith<$Res>
    implements $ResponseSignupModelCopyWith<$Res> {
  factory _$$_ResponseSignupModelCopyWith(_$_ResponseSignupModel value,
          $Res Function(_$_ResponseSignupModel) then) =
      __$$_ResponseSignupModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String createdAt,
      String updatedAt,
      String username,
      String email,
      String? password,
      String bio,
      String image});
}

/// @nodoc
class __$$_ResponseSignupModelCopyWithImpl<$Res>
    extends _$ResponseSignupModelCopyWithImpl<$Res>
    implements _$$_ResponseSignupModelCopyWith<$Res> {
  __$$_ResponseSignupModelCopyWithImpl(_$_ResponseSignupModel _value,
      $Res Function(_$_ResponseSignupModel) _then)
      : super(_value, (v) => _then(v as _$_ResponseSignupModel));

  @override
  _$_ResponseSignupModel get _value => super._value as _$_ResponseSignupModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? bio = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_ResponseSignupModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
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
              as String?,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseSignupModel implements _ResponseSignupModel {
  const _$_ResponseSignupModel(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.username,
      required this.email,
      this.password = '',
      required this.bio,
      required this.image});

  factory _$_ResponseSignupModel.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseSignupModelFromJson(json);

  @override
  final int id;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final String username;
  @override
  final String email;
  @override
  @JsonKey()
  final String? password;
  @override
  final String bio;
  @override
  final String image;

  @override
  String toString() {
    return 'ResponseSignupModel(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, username: $username, email: $email, password: $password, bio: $bio, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseSignupModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.bio, bio) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(bio),
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$$_ResponseSignupModelCopyWith<_$_ResponseSignupModel> get copyWith =>
      __$$_ResponseSignupModelCopyWithImpl<_$_ResponseSignupModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseSignupModelToJson(
      this,
    );
  }
}

abstract class _ResponseSignupModel implements ResponseSignupModel {
  const factory _ResponseSignupModel(
      {required final int id,
      required final String createdAt,
      required final String updatedAt,
      required final String username,
      required final String email,
      final String? password,
      required final String bio,
      required final String image}) = _$_ResponseSignupModel;

  factory _ResponseSignupModel.fromJson(Map<String, dynamic> json) =
      _$_ResponseSignupModel.fromJson;

  @override
  int get id;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get username;
  @override
  String get email;
  @override
  String? get password;
  @override
  String get bio;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseSignupModelCopyWith<_$_ResponseSignupModel> get copyWith =>
      throw _privateConstructorUsedError;
}
