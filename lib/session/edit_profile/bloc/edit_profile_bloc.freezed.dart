// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) usernameChanged,
    required TResult Function(String bio) bioChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function() openImagePicker,
    required TResult Function(EditProfileModel data) saveUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username)? usernameChanged,
    TResult Function(String bio)? bioChanged,
    TResult Function(String email)? emailChanged,
    TResult Function()? openImagePicker,
    TResult Function(EditProfileModel data)? saveUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? usernameChanged,
    TResult Function(String bio)? bioChanged,
    TResult Function(String email)? emailChanged,
    TResult Function()? openImagePicker,
    TResult Function(EditProfileModel data)? saveUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_BioChanged value) bioChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_OpenImagePicker value) openImagePicker,
    required TResult Function(_SaveUser value) saveUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_OpenImagePicker value)? openImagePicker,
    TResult Function(_SaveUser value)? saveUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_OpenImagePicker value)? openImagePicker,
    TResult Function(_SaveUser value)? saveUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileEventCopyWith<$Res> {
  factory $EditProfileEventCopyWith(
          EditProfileEvent value, $Res Function(EditProfileEvent) then) =
      _$EditProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditProfileEventCopyWithImpl<$Res>
    implements $EditProfileEventCopyWith<$Res> {
  _$EditProfileEventCopyWithImpl(this._value, this._then);

  final EditProfileEvent _value;
  // ignore: unused_field
  final $Res Function(EditProfileEvent) _then;
}

/// @nodoc
abstract class _$$_UsernameChangedCopyWith<$Res> {
  factory _$$_UsernameChangedCopyWith(
          _$_UsernameChanged value, $Res Function(_$_UsernameChanged) then) =
      __$$_UsernameChangedCopyWithImpl<$Res>;
  $Res call({String username});
}

/// @nodoc
class __$$_UsernameChangedCopyWithImpl<$Res>
    extends _$EditProfileEventCopyWithImpl<$Res>
    implements _$$_UsernameChangedCopyWith<$Res> {
  __$$_UsernameChangedCopyWithImpl(
      _$_UsernameChanged _value, $Res Function(_$_UsernameChanged) _then)
      : super(_value, (v) => _then(v as _$_UsernameChanged));

  @override
  _$_UsernameChanged get _value => super._value as _$_UsernameChanged;

  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(_$_UsernameChanged(
      username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UsernameChanged implements _UsernameChanged {
  const _$_UsernameChanged(this.username);

  @override
  final String username;

  @override
  String toString() {
    return 'EditProfileEvent.usernameChanged(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UsernameChanged &&
            const DeepCollectionEquality().equals(other.username, username));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(username));

  @JsonKey(ignore: true)
  @override
  _$$_UsernameChangedCopyWith<_$_UsernameChanged> get copyWith =>
      __$$_UsernameChangedCopyWithImpl<_$_UsernameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) usernameChanged,
    required TResult Function(String bio) bioChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function() openImagePicker,
    required TResult Function(EditProfileModel data) saveUser,
  }) {
    return usernameChanged(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username)? usernameChanged,
    TResult Function(String bio)? bioChanged,
    TResult Function(String email)? emailChanged,
    TResult Function()? openImagePicker,
    TResult Function(EditProfileModel data)? saveUser,
  }) {
    return usernameChanged?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? usernameChanged,
    TResult Function(String bio)? bioChanged,
    TResult Function(String email)? emailChanged,
    TResult Function()? openImagePicker,
    TResult Function(EditProfileModel data)? saveUser,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_BioChanged value) bioChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_OpenImagePicker value) openImagePicker,
    required TResult Function(_SaveUser value) saveUser,
  }) {
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_OpenImagePicker value)? openImagePicker,
    TResult Function(_SaveUser value)? saveUser,
  }) {
    return usernameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_OpenImagePicker value)? openImagePicker,
    TResult Function(_SaveUser value)? saveUser,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class _UsernameChanged implements EditProfileEvent {
  const factory _UsernameChanged(final String username) = _$_UsernameChanged;

  String get username;
  @JsonKey(ignore: true)
  _$$_UsernameChangedCopyWith<_$_UsernameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BioChangedCopyWith<$Res> {
  factory _$$_BioChangedCopyWith(
          _$_BioChanged value, $Res Function(_$_BioChanged) then) =
      __$$_BioChangedCopyWithImpl<$Res>;
  $Res call({String bio});
}

/// @nodoc
class __$$_BioChangedCopyWithImpl<$Res>
    extends _$EditProfileEventCopyWithImpl<$Res>
    implements _$$_BioChangedCopyWith<$Res> {
  __$$_BioChangedCopyWithImpl(
      _$_BioChanged _value, $Res Function(_$_BioChanged) _then)
      : super(_value, (v) => _then(v as _$_BioChanged));

  @override
  _$_BioChanged get _value => super._value as _$_BioChanged;

  @override
  $Res call({
    Object? bio = freezed,
  }) {
    return _then(_$_BioChanged(
      bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BioChanged implements _BioChanged {
  const _$_BioChanged(this.bio);

  @override
  final String bio;

  @override
  String toString() {
    return 'EditProfileEvent.bioChanged(bio: $bio)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BioChanged &&
            const DeepCollectionEquality().equals(other.bio, bio));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(bio));

  @JsonKey(ignore: true)
  @override
  _$$_BioChangedCopyWith<_$_BioChanged> get copyWith =>
      __$$_BioChangedCopyWithImpl<_$_BioChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) usernameChanged,
    required TResult Function(String bio) bioChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function() openImagePicker,
    required TResult Function(EditProfileModel data) saveUser,
  }) {
    return bioChanged(bio);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username)? usernameChanged,
    TResult Function(String bio)? bioChanged,
    TResult Function(String email)? emailChanged,
    TResult Function()? openImagePicker,
    TResult Function(EditProfileModel data)? saveUser,
  }) {
    return bioChanged?.call(bio);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? usernameChanged,
    TResult Function(String bio)? bioChanged,
    TResult Function(String email)? emailChanged,
    TResult Function()? openImagePicker,
    TResult Function(EditProfileModel data)? saveUser,
    required TResult orElse(),
  }) {
    if (bioChanged != null) {
      return bioChanged(bio);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_BioChanged value) bioChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_OpenImagePicker value) openImagePicker,
    required TResult Function(_SaveUser value) saveUser,
  }) {
    return bioChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_OpenImagePicker value)? openImagePicker,
    TResult Function(_SaveUser value)? saveUser,
  }) {
    return bioChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_OpenImagePicker value)? openImagePicker,
    TResult Function(_SaveUser value)? saveUser,
    required TResult orElse(),
  }) {
    if (bioChanged != null) {
      return bioChanged(this);
    }
    return orElse();
  }
}

abstract class _BioChanged implements EditProfileEvent {
  const factory _BioChanged(final String bio) = _$_BioChanged;

  String get bio;
  @JsonKey(ignore: true)
  _$$_BioChangedCopyWith<_$_BioChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EmailChangedCopyWith<$Res> {
  factory _$$_EmailChangedCopyWith(
          _$_EmailChanged value, $Res Function(_$_EmailChanged) then) =
      __$$_EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$$_EmailChangedCopyWithImpl<$Res>
    extends _$EditProfileEventCopyWithImpl<$Res>
    implements _$$_EmailChangedCopyWith<$Res> {
  __$$_EmailChangedCopyWithImpl(
      _$_EmailChanged _value, $Res Function(_$_EmailChanged) _then)
      : super(_value, (v) => _then(v as _$_EmailChanged));

  @override
  _$_EmailChanged get _value => super._value as _$_EmailChanged;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_$_EmailChanged(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'EditProfileEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailChanged &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      __$$_EmailChangedCopyWithImpl<_$_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) usernameChanged,
    required TResult Function(String bio) bioChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function() openImagePicker,
    required TResult Function(EditProfileModel data) saveUser,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username)? usernameChanged,
    TResult Function(String bio)? bioChanged,
    TResult Function(String email)? emailChanged,
    TResult Function()? openImagePicker,
    TResult Function(EditProfileModel data)? saveUser,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? usernameChanged,
    TResult Function(String bio)? bioChanged,
    TResult Function(String email)? emailChanged,
    TResult Function()? openImagePicker,
    TResult Function(EditProfileModel data)? saveUser,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_BioChanged value) bioChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_OpenImagePicker value) openImagePicker,
    required TResult Function(_SaveUser value) saveUser,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_OpenImagePicker value)? openImagePicker,
    TResult Function(_SaveUser value)? saveUser,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_OpenImagePicker value)? openImagePicker,
    TResult Function(_SaveUser value)? saveUser,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements EditProfileEvent {
  const factory _EmailChanged(final String email) = _$_EmailChanged;

  String get email;
  @JsonKey(ignore: true)
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OpenImagePickerCopyWith<$Res> {
  factory _$$_OpenImagePickerCopyWith(
          _$_OpenImagePicker value, $Res Function(_$_OpenImagePicker) then) =
      __$$_OpenImagePickerCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OpenImagePickerCopyWithImpl<$Res>
    extends _$EditProfileEventCopyWithImpl<$Res>
    implements _$$_OpenImagePickerCopyWith<$Res> {
  __$$_OpenImagePickerCopyWithImpl(
      _$_OpenImagePicker _value, $Res Function(_$_OpenImagePicker) _then)
      : super(_value, (v) => _then(v as _$_OpenImagePicker));

  @override
  _$_OpenImagePicker get _value => super._value as _$_OpenImagePicker;
}

/// @nodoc

class _$_OpenImagePicker implements _OpenImagePicker {
  const _$_OpenImagePicker();

  @override
  String toString() {
    return 'EditProfileEvent.openImagePicker()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OpenImagePicker);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) usernameChanged,
    required TResult Function(String bio) bioChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function() openImagePicker,
    required TResult Function(EditProfileModel data) saveUser,
  }) {
    return openImagePicker();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username)? usernameChanged,
    TResult Function(String bio)? bioChanged,
    TResult Function(String email)? emailChanged,
    TResult Function()? openImagePicker,
    TResult Function(EditProfileModel data)? saveUser,
  }) {
    return openImagePicker?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? usernameChanged,
    TResult Function(String bio)? bioChanged,
    TResult Function(String email)? emailChanged,
    TResult Function()? openImagePicker,
    TResult Function(EditProfileModel data)? saveUser,
    required TResult orElse(),
  }) {
    if (openImagePicker != null) {
      return openImagePicker();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_BioChanged value) bioChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_OpenImagePicker value) openImagePicker,
    required TResult Function(_SaveUser value) saveUser,
  }) {
    return openImagePicker(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_OpenImagePicker value)? openImagePicker,
    TResult Function(_SaveUser value)? saveUser,
  }) {
    return openImagePicker?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_OpenImagePicker value)? openImagePicker,
    TResult Function(_SaveUser value)? saveUser,
    required TResult orElse(),
  }) {
    if (openImagePicker != null) {
      return openImagePicker(this);
    }
    return orElse();
  }
}

abstract class _OpenImagePicker implements EditProfileEvent {
  const factory _OpenImagePicker() = _$_OpenImagePicker;
}

/// @nodoc
abstract class _$$_SaveUserCopyWith<$Res> {
  factory _$$_SaveUserCopyWith(
          _$_SaveUser value, $Res Function(_$_SaveUser) then) =
      __$$_SaveUserCopyWithImpl<$Res>;
  $Res call({EditProfileModel data});

  $EditProfileModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SaveUserCopyWithImpl<$Res>
    extends _$EditProfileEventCopyWithImpl<$Res>
    implements _$$_SaveUserCopyWith<$Res> {
  __$$_SaveUserCopyWithImpl(
      _$_SaveUser _value, $Res Function(_$_SaveUser) _then)
      : super(_value, (v) => _then(v as _$_SaveUser));

  @override
  _$_SaveUser get _value => super._value as _$_SaveUser;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_SaveUser(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as EditProfileModel,
    ));
  }

  @override
  $EditProfileModelCopyWith<$Res> get data {
    return $EditProfileModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$_SaveUser implements _SaveUser {
  const _$_SaveUser(this.data);

  @override
  final EditProfileModel data;

  @override
  String toString() {
    return 'EditProfileEvent.saveUser(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveUser &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_SaveUserCopyWith<_$_SaveUser> get copyWith =>
      __$$_SaveUserCopyWithImpl<_$_SaveUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) usernameChanged,
    required TResult Function(String bio) bioChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function() openImagePicker,
    required TResult Function(EditProfileModel data) saveUser,
  }) {
    return saveUser(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username)? usernameChanged,
    TResult Function(String bio)? bioChanged,
    TResult Function(String email)? emailChanged,
    TResult Function()? openImagePicker,
    TResult Function(EditProfileModel data)? saveUser,
  }) {
    return saveUser?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? usernameChanged,
    TResult Function(String bio)? bioChanged,
    TResult Function(String email)? emailChanged,
    TResult Function()? openImagePicker,
    TResult Function(EditProfileModel data)? saveUser,
    required TResult orElse(),
  }) {
    if (saveUser != null) {
      return saveUser(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_BioChanged value) bioChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_OpenImagePicker value) openImagePicker,
    required TResult Function(_SaveUser value) saveUser,
  }) {
    return saveUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_OpenImagePicker value)? openImagePicker,
    TResult Function(_SaveUser value)? saveUser,
  }) {
    return saveUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_OpenImagePicker value)? openImagePicker,
    TResult Function(_SaveUser value)? saveUser,
    required TResult orElse(),
  }) {
    if (saveUser != null) {
      return saveUser(this);
    }
    return orElse();
  }
}

abstract class _SaveUser implements EditProfileEvent {
  const factory _SaveUser(final EditProfileModel data) = _$_SaveUser;

  EditProfileModel get data;
  @JsonKey(ignore: true)
  _$$_SaveUserCopyWith<_$_SaveUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EditProfileState {
  String? get username => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get imagePath => throw _privateConstructorUsedError;
  FormStatus get formStatus => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? username, String? bio, String? email,
            String? imagePath, FormStatus formStatus)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? username, String? bio, String? email,
            String? imagePath, FormStatus formStatus)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? username, String? bio, String? email,
            String? imagePath, FormStatus formStatus)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditProfileStateCopyWith<EditProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileStateCopyWith<$Res> {
  factory $EditProfileStateCopyWith(
          EditProfileState value, $Res Function(EditProfileState) then) =
      _$EditProfileStateCopyWithImpl<$Res>;
  $Res call(
      {String? username,
      String? bio,
      String? email,
      String? imagePath,
      FormStatus formStatus});
}

/// @nodoc
class _$EditProfileStateCopyWithImpl<$Res>
    implements $EditProfileStateCopyWith<$Res> {
  _$EditProfileStateCopyWithImpl(this._value, this._then);

  final EditProfileState _value;
  // ignore: unused_field
  final $Res Function(EditProfileState) _then;

  @override
  $Res call({
    Object? username = freezed,
    Object? bio = freezed,
    Object? email = freezed,
    Object? imagePath = freezed,
    Object? formStatus = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      formStatus: formStatus == freezed
          ? _value.formStatus
          : formStatus // ignore: cast_nullable_to_non_nullable
              as FormStatus,
    ));
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $EditProfileStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? username,
      String? bio,
      String? email,
      String? imagePath,
      FormStatus formStatus});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;

  @override
  $Res call({
    Object? username = freezed,
    Object? bio = freezed,
    Object? email = freezed,
    Object? imagePath = freezed,
    Object? formStatus = freezed,
  }) {
    return _then(_$_Initial(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      formStatus: formStatus == freezed
          ? _value.formStatus
          : formStatus // ignore: cast_nullable_to_non_nullable
              as FormStatus,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {this.username,
      this.bio,
      this.email,
      this.imagePath,
      this.formStatus = const InitialFormStatus()});

  @override
  final String? username;
  @override
  final String? bio;
  @override
  final String? email;
  @override
  final String? imagePath;
  @override
  @JsonKey()
  final FormStatus formStatus;

  @override
  String toString() {
    return 'EditProfileState.initial(username: $username, bio: $bio, email: $email, imagePath: $imagePath, formStatus: $formStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.bio, bio) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.imagePath, imagePath) &&
            const DeepCollectionEquality()
                .equals(other.formStatus, formStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(bio),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(imagePath),
      const DeepCollectionEquality().hash(formStatus));

  @JsonKey(ignore: true)
  @override
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? username, String? bio, String? email,
            String? imagePath, FormStatus formStatus)
        initial,
  }) {
    return initial(username, bio, email, imagePath, formStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? username, String? bio, String? email,
            String? imagePath, FormStatus formStatus)?
        initial,
  }) {
    return initial?.call(username, bio, email, imagePath, formStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? username, String? bio, String? email,
            String? imagePath, FormStatus formStatus)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(username, bio, email, imagePath, formStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements EditProfileState {
  const factory _Initial(
      {final String? username,
      final String? bio,
      final String? email,
      final String? imagePath,
      final FormStatus formStatus}) = _$_Initial;

  @override
  String? get username;
  @override
  String? get bio;
  @override
  String? get email;
  @override
  String? get imagePath;
  @override
  FormStatus get formStatus;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
