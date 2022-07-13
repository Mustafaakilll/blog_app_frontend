// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EditProfileModel _$EditProfileModelFromJson(Map<String, dynamic> json) {
  return _EditProfileModel.fromJson(json);
}

/// @nodoc
mixin _$EditProfileModel {
// required String username,
  String get email => throw _privateConstructorUsedError;
  String get bio => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditProfileModelCopyWith<EditProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileModelCopyWith<$Res> {
  factory $EditProfileModelCopyWith(
          EditProfileModel value, $Res Function(EditProfileModel) then) =
      _$EditProfileModelCopyWithImpl<$Res>;
  $Res call({String email, String bio, String? image});
}

/// @nodoc
class _$EditProfileModelCopyWithImpl<$Res>
    implements $EditProfileModelCopyWith<$Res> {
  _$EditProfileModelCopyWithImpl(this._value, this._then);

  final EditProfileModel _value;
  // ignore: unused_field
  final $Res Function(EditProfileModel) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? bio = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_EditProfileModelCopyWith<$Res>
    implements $EditProfileModelCopyWith<$Res> {
  factory _$$_EditProfileModelCopyWith(
          _$_EditProfileModel value, $Res Function(_$_EditProfileModel) then) =
      __$$_EditProfileModelCopyWithImpl<$Res>;
  @override
  $Res call({String email, String bio, String? image});
}

/// @nodoc
class __$$_EditProfileModelCopyWithImpl<$Res>
    extends _$EditProfileModelCopyWithImpl<$Res>
    implements _$$_EditProfileModelCopyWith<$Res> {
  __$$_EditProfileModelCopyWithImpl(
      _$_EditProfileModel _value, $Res Function(_$_EditProfileModel) _then)
      : super(_value, (v) => _then(v as _$_EditProfileModel));

  @override
  _$_EditProfileModel get _value => super._value as _$_EditProfileModel;

  @override
  $Res call({
    Object? email = freezed,
    Object? bio = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_EditProfileModel(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EditProfileModel implements _EditProfileModel {
  const _$_EditProfileModel(
      {required this.email, required this.bio, this.image});

  factory _$_EditProfileModel.fromJson(Map<String, dynamic> json) =>
      _$$_EditProfileModelFromJson(json);

// required String username,
  @override
  final String email;
  @override
  final String bio;
  @override
  final String? image;

  @override
  String toString() {
    return 'EditProfileModel(email: $email, bio: $bio, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditProfileModel &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.bio, bio) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(bio),
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$$_EditProfileModelCopyWith<_$_EditProfileModel> get copyWith =>
      __$$_EditProfileModelCopyWithImpl<_$_EditProfileModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EditProfileModelToJson(this);
  }
}

abstract class _EditProfileModel implements EditProfileModel {
  const factory _EditProfileModel(
      {required final String email,
      required final String bio,
      final String? image}) = _$_EditProfileModel;

  factory _EditProfileModel.fromJson(Map<String, dynamic> json) =
      _$_EditProfileModel.fromJson;

  @override // required String username,
  String get email => throw _privateConstructorUsedError;
  @override
  String get bio => throw _privateConstructorUsedError;
  @override
  String? get image => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_EditProfileModelCopyWith<_$_EditProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}
