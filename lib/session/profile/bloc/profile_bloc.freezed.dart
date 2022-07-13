// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(String username) followUser,
    required TResult Function(String username) unfollowUser,
    required TResult Function() pickImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String username)? followUser,
    TResult Function(String username)? unfollowUser,
    TResult Function()? pickImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String username)? followUser,
    TResult Function(String username)? unfollowUser,
    TResult Function()? pickImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FollowUser value) followUser,
    required TResult Function(_UnfollowUser value) unfollowUser,
    required TResult Function(_PickImageEvent value) pickImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FollowUser value)? followUser,
    TResult Function(_UnfollowUser value)? unfollowUser,
    TResult Function(_PickImageEvent value)? pickImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FollowUser value)? followUser,
    TResult Function(_UnfollowUser value)? unfollowUser,
    TResult Function(_PickImageEvent value)? pickImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res> implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  final ProfileEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileEvent) _then;
}

/// @nodoc
abstract class _$$_FetchCopyWith<$Res> {
  factory _$$_FetchCopyWith(_$_Fetch value, $Res Function(_$_Fetch) then) =
      __$$_FetchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
    implements _$$_FetchCopyWith<$Res> {
  __$$_FetchCopyWithImpl(_$_Fetch _value, $Res Function(_$_Fetch) _then)
      : super(_value, (v) => _then(v as _$_Fetch));

  @override
  _$_Fetch get _value => super._value as _$_Fetch;
}

/// @nodoc

class _$_Fetch implements _Fetch {
  const _$_Fetch();

  @override
  String toString() {
    return 'ProfileEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Fetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(String username) followUser,
    required TResult Function(String username) unfollowUser,
    required TResult Function() pickImage,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String username)? followUser,
    TResult Function(String username)? unfollowUser,
    TResult Function()? pickImage,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String username)? followUser,
    TResult Function(String username)? unfollowUser,
    TResult Function()? pickImage,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FollowUser value) followUser,
    required TResult Function(_UnfollowUser value) unfollowUser,
    required TResult Function(_PickImageEvent value) pickImage,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FollowUser value)? followUser,
    TResult Function(_UnfollowUser value)? unfollowUser,
    TResult Function(_PickImageEvent value)? pickImage,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FollowUser value)? followUser,
    TResult Function(_UnfollowUser value)? unfollowUser,
    TResult Function(_PickImageEvent value)? pickImage,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements ProfileEvent {
  const factory _Fetch() = _$_Fetch;
}

/// @nodoc
abstract class _$$_FollowUserCopyWith<$Res> {
  factory _$$_FollowUserCopyWith(
          _$_FollowUser value, $Res Function(_$_FollowUser) then) =
      __$$_FollowUserCopyWithImpl<$Res>;
  $Res call({String username});
}

/// @nodoc
class __$$_FollowUserCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
    implements _$$_FollowUserCopyWith<$Res> {
  __$$_FollowUserCopyWithImpl(
      _$_FollowUser _value, $Res Function(_$_FollowUser) _then)
      : super(_value, (v) => _then(v as _$_FollowUser));

  @override
  _$_FollowUser get _value => super._value as _$_FollowUser;

  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(_$_FollowUser(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FollowUser implements _FollowUser {
  const _$_FollowUser({required this.username});

  @override
  final String username;

  @override
  String toString() {
    return 'ProfileEvent.followUser(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FollowUser &&
            const DeepCollectionEquality().equals(other.username, username));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(username));

  @JsonKey(ignore: true)
  @override
  _$$_FollowUserCopyWith<_$_FollowUser> get copyWith =>
      __$$_FollowUserCopyWithImpl<_$_FollowUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(String username) followUser,
    required TResult Function(String username) unfollowUser,
    required TResult Function() pickImage,
  }) {
    return followUser(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String username)? followUser,
    TResult Function(String username)? unfollowUser,
    TResult Function()? pickImage,
  }) {
    return followUser?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String username)? followUser,
    TResult Function(String username)? unfollowUser,
    TResult Function()? pickImage,
    required TResult orElse(),
  }) {
    if (followUser != null) {
      return followUser(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FollowUser value) followUser,
    required TResult Function(_UnfollowUser value) unfollowUser,
    required TResult Function(_PickImageEvent value) pickImage,
  }) {
    return followUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FollowUser value)? followUser,
    TResult Function(_UnfollowUser value)? unfollowUser,
    TResult Function(_PickImageEvent value)? pickImage,
  }) {
    return followUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FollowUser value)? followUser,
    TResult Function(_UnfollowUser value)? unfollowUser,
    TResult Function(_PickImageEvent value)? pickImage,
    required TResult orElse(),
  }) {
    if (followUser != null) {
      return followUser(this);
    }
    return orElse();
  }
}

abstract class _FollowUser implements ProfileEvent {
  const factory _FollowUser({required final String username}) = _$_FollowUser;

  String get username => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_FollowUserCopyWith<_$_FollowUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnfollowUserCopyWith<$Res> {
  factory _$$_UnfollowUserCopyWith(
          _$_UnfollowUser value, $Res Function(_$_UnfollowUser) then) =
      __$$_UnfollowUserCopyWithImpl<$Res>;
  $Res call({String username});
}

/// @nodoc
class __$$_UnfollowUserCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$$_UnfollowUserCopyWith<$Res> {
  __$$_UnfollowUserCopyWithImpl(
      _$_UnfollowUser _value, $Res Function(_$_UnfollowUser) _then)
      : super(_value, (v) => _then(v as _$_UnfollowUser));

  @override
  _$_UnfollowUser get _value => super._value as _$_UnfollowUser;

  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(_$_UnfollowUser(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UnfollowUser implements _UnfollowUser {
  const _$_UnfollowUser({required this.username});

  @override
  final String username;

  @override
  String toString() {
    return 'ProfileEvent.unfollowUser(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnfollowUser &&
            const DeepCollectionEquality().equals(other.username, username));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(username));

  @JsonKey(ignore: true)
  @override
  _$$_UnfollowUserCopyWith<_$_UnfollowUser> get copyWith =>
      __$$_UnfollowUserCopyWithImpl<_$_UnfollowUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(String username) followUser,
    required TResult Function(String username) unfollowUser,
    required TResult Function() pickImage,
  }) {
    return unfollowUser(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String username)? followUser,
    TResult Function(String username)? unfollowUser,
    TResult Function()? pickImage,
  }) {
    return unfollowUser?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String username)? followUser,
    TResult Function(String username)? unfollowUser,
    TResult Function()? pickImage,
    required TResult orElse(),
  }) {
    if (unfollowUser != null) {
      return unfollowUser(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FollowUser value) followUser,
    required TResult Function(_UnfollowUser value) unfollowUser,
    required TResult Function(_PickImageEvent value) pickImage,
  }) {
    return unfollowUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FollowUser value)? followUser,
    TResult Function(_UnfollowUser value)? unfollowUser,
    TResult Function(_PickImageEvent value)? pickImage,
  }) {
    return unfollowUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FollowUser value)? followUser,
    TResult Function(_UnfollowUser value)? unfollowUser,
    TResult Function(_PickImageEvent value)? pickImage,
    required TResult orElse(),
  }) {
    if (unfollowUser != null) {
      return unfollowUser(this);
    }
    return orElse();
  }
}

abstract class _UnfollowUser implements ProfileEvent {
  const factory _UnfollowUser({required final String username}) =
      _$_UnfollowUser;

  String get username => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_UnfollowUserCopyWith<_$_UnfollowUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PickImageEventCopyWith<$Res> {
  factory _$$_PickImageEventCopyWith(
          _$_PickImageEvent value, $Res Function(_$_PickImageEvent) then) =
      __$$_PickImageEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PickImageEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$$_PickImageEventCopyWith<$Res> {
  __$$_PickImageEventCopyWithImpl(
      _$_PickImageEvent _value, $Res Function(_$_PickImageEvent) _then)
      : super(_value, (v) => _then(v as _$_PickImageEvent));

  @override
  _$_PickImageEvent get _value => super._value as _$_PickImageEvent;
}

/// @nodoc

class _$_PickImageEvent implements _PickImageEvent {
  const _$_PickImageEvent();

  @override
  String toString() {
    return 'ProfileEvent.pickImage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PickImageEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(String username) followUser,
    required TResult Function(String username) unfollowUser,
    required TResult Function() pickImage,
  }) {
    return pickImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String username)? followUser,
    TResult Function(String username)? unfollowUser,
    TResult Function()? pickImage,
  }) {
    return pickImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String username)? followUser,
    TResult Function(String username)? unfollowUser,
    TResult Function()? pickImage,
    required TResult orElse(),
  }) {
    if (pickImage != null) {
      return pickImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FollowUser value) followUser,
    required TResult Function(_UnfollowUser value) unfollowUser,
    required TResult Function(_PickImageEvent value) pickImage,
  }) {
    return pickImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FollowUser value)? followUser,
    TResult Function(_UnfollowUser value)? unfollowUser,
    TResult Function(_PickImageEvent value)? pickImage,
  }) {
    return pickImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FollowUser value)? followUser,
    TResult Function(_UnfollowUser value)? unfollowUser,
    TResult Function(_PickImageEvent value)? pickImage,
    required TResult orElse(),
  }) {
    if (pickImage != null) {
      return pickImage(this);
    }
    return orElse();
  }
}

abstract class _PickImageEvent implements ProfileEvent {
  const factory _PickImageEvent() = _$_PickImageEvent;
}

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetching,
    required TResult Function(String exception) fetchFail,
    required TResult Function(UserModel user) fetchSuccess,
    required TResult Function(UserModel user) followSuccess,
    required TResult Function(String exception) followFail,
    required TResult Function(String imageUrl) pickImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetching,
    TResult Function(String exception)? fetchFail,
    TResult Function(UserModel user)? fetchSuccess,
    TResult Function(UserModel user)? followSuccess,
    TResult Function(String exception)? followFail,
    TResult Function(String imageUrl)? pickImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetching,
    TResult Function(String exception)? fetchFail,
    TResult Function(UserModel user)? fetchSuccess,
    TResult Function(UserModel user)? followSuccess,
    TResult Function(String exception)? followFail,
    TResult Function(String imageUrl)? pickImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetching value) fetching,
    required TResult Function(_FetchFail value) fetchFail,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_FollowSuccess value) followSuccess,
    required TResult Function(_FollowFail value) followFail,
    required TResult Function(_PickImageState value) pickImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetching value)? fetching,
    TResult Function(_FetchFail value)? fetchFail,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FollowSuccess value)? followSuccess,
    TResult Function(_FollowFail value)? followFail,
    TResult Function(_PickImageState value)? pickImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetching value)? fetching,
    TResult Function(_FetchFail value)? fetchFail,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FollowSuccess value)? followSuccess,
    TResult Function(_FollowFail value)? followFail,
    TResult Function(_PickImageState value)? pickImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;
}

/// @nodoc
abstract class _$$_FetchingCopyWith<$Res> {
  factory _$$_FetchingCopyWith(
          _$_Fetching value, $Res Function(_$_Fetching) then) =
      __$$_FetchingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchingCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
    implements _$$_FetchingCopyWith<$Res> {
  __$$_FetchingCopyWithImpl(
      _$_Fetching _value, $Res Function(_$_Fetching) _then)
      : super(_value, (v) => _then(v as _$_Fetching));

  @override
  _$_Fetching get _value => super._value as _$_Fetching;
}

/// @nodoc

class _$_Fetching implements _Fetching {
  const _$_Fetching();

  @override
  String toString() {
    return 'ProfileState.fetching()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Fetching);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetching,
    required TResult Function(String exception) fetchFail,
    required TResult Function(UserModel user) fetchSuccess,
    required TResult Function(UserModel user) followSuccess,
    required TResult Function(String exception) followFail,
    required TResult Function(String imageUrl) pickImage,
  }) {
    return fetching();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetching,
    TResult Function(String exception)? fetchFail,
    TResult Function(UserModel user)? fetchSuccess,
    TResult Function(UserModel user)? followSuccess,
    TResult Function(String exception)? followFail,
    TResult Function(String imageUrl)? pickImage,
  }) {
    return fetching?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetching,
    TResult Function(String exception)? fetchFail,
    TResult Function(UserModel user)? fetchSuccess,
    TResult Function(UserModel user)? followSuccess,
    TResult Function(String exception)? followFail,
    TResult Function(String imageUrl)? pickImage,
    required TResult orElse(),
  }) {
    if (fetching != null) {
      return fetching();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetching value) fetching,
    required TResult Function(_FetchFail value) fetchFail,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_FollowSuccess value) followSuccess,
    required TResult Function(_FollowFail value) followFail,
    required TResult Function(_PickImageState value) pickImage,
  }) {
    return fetching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetching value)? fetching,
    TResult Function(_FetchFail value)? fetchFail,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FollowSuccess value)? followSuccess,
    TResult Function(_FollowFail value)? followFail,
    TResult Function(_PickImageState value)? pickImage,
  }) {
    return fetching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetching value)? fetching,
    TResult Function(_FetchFail value)? fetchFail,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FollowSuccess value)? followSuccess,
    TResult Function(_FollowFail value)? followFail,
    TResult Function(_PickImageState value)? pickImage,
    required TResult orElse(),
  }) {
    if (fetching != null) {
      return fetching(this);
    }
    return orElse();
  }
}

abstract class _Fetching implements ProfileState {
  const factory _Fetching() = _$_Fetching;
}

/// @nodoc
abstract class _$$_FetchFailCopyWith<$Res> {
  factory _$$_FetchFailCopyWith(
          _$_FetchFail value, $Res Function(_$_FetchFail) then) =
      __$$_FetchFailCopyWithImpl<$Res>;
  $Res call({String exception});
}

/// @nodoc
class __$$_FetchFailCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
    implements _$$_FetchFailCopyWith<$Res> {
  __$$_FetchFailCopyWithImpl(
      _$_FetchFail _value, $Res Function(_$_FetchFail) _then)
      : super(_value, (v) => _then(v as _$_FetchFail));

  @override
  _$_FetchFail get _value => super._value as _$_FetchFail;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_$_FetchFail(
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FetchFail implements _FetchFail {
  const _$_FetchFail({required this.exception});

  @override
  final String exception;

  @override
  String toString() {
    return 'ProfileState.fetchFail(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchFail &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  _$$_FetchFailCopyWith<_$_FetchFail> get copyWith =>
      __$$_FetchFailCopyWithImpl<_$_FetchFail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetching,
    required TResult Function(String exception) fetchFail,
    required TResult Function(UserModel user) fetchSuccess,
    required TResult Function(UserModel user) followSuccess,
    required TResult Function(String exception) followFail,
    required TResult Function(String imageUrl) pickImage,
  }) {
    return fetchFail(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetching,
    TResult Function(String exception)? fetchFail,
    TResult Function(UserModel user)? fetchSuccess,
    TResult Function(UserModel user)? followSuccess,
    TResult Function(String exception)? followFail,
    TResult Function(String imageUrl)? pickImage,
  }) {
    return fetchFail?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetching,
    TResult Function(String exception)? fetchFail,
    TResult Function(UserModel user)? fetchSuccess,
    TResult Function(UserModel user)? followSuccess,
    TResult Function(String exception)? followFail,
    TResult Function(String imageUrl)? pickImage,
    required TResult orElse(),
  }) {
    if (fetchFail != null) {
      return fetchFail(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetching value) fetching,
    required TResult Function(_FetchFail value) fetchFail,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_FollowSuccess value) followSuccess,
    required TResult Function(_FollowFail value) followFail,
    required TResult Function(_PickImageState value) pickImage,
  }) {
    return fetchFail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetching value)? fetching,
    TResult Function(_FetchFail value)? fetchFail,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FollowSuccess value)? followSuccess,
    TResult Function(_FollowFail value)? followFail,
    TResult Function(_PickImageState value)? pickImage,
  }) {
    return fetchFail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetching value)? fetching,
    TResult Function(_FetchFail value)? fetchFail,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FollowSuccess value)? followSuccess,
    TResult Function(_FollowFail value)? followFail,
    TResult Function(_PickImageState value)? pickImage,
    required TResult orElse(),
  }) {
    if (fetchFail != null) {
      return fetchFail(this);
    }
    return orElse();
  }
}

abstract class _FetchFail implements ProfileState {
  const factory _FetchFail({required final String exception}) = _$_FetchFail;

  String get exception => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_FetchFailCopyWith<_$_FetchFail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchSuccessCopyWith<$Res> {
  factory _$$_FetchSuccessCopyWith(
          _$_FetchSuccess value, $Res Function(_$_FetchSuccess) then) =
      __$$_FetchSuccessCopyWithImpl<$Res>;
  $Res call({UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$_FetchSuccessCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements _$$_FetchSuccessCopyWith<$Res> {
  __$$_FetchSuccessCopyWithImpl(
      _$_FetchSuccess _value, $Res Function(_$_FetchSuccess) _then)
      : super(_value, (v) => _then(v as _$_FetchSuccess));

  @override
  _$_FetchSuccess get _value => super._value as _$_FetchSuccess;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$_FetchSuccess(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  @override
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_FetchSuccess implements _FetchSuccess {
  const _$_FetchSuccess({required this.user});

  @override
  final UserModel user;

  @override
  String toString() {
    return 'ProfileState.fetchSuccess(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchSuccess &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$_FetchSuccessCopyWith<_$_FetchSuccess> get copyWith =>
      __$$_FetchSuccessCopyWithImpl<_$_FetchSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetching,
    required TResult Function(String exception) fetchFail,
    required TResult Function(UserModel user) fetchSuccess,
    required TResult Function(UserModel user) followSuccess,
    required TResult Function(String exception) followFail,
    required TResult Function(String imageUrl) pickImage,
  }) {
    return fetchSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetching,
    TResult Function(String exception)? fetchFail,
    TResult Function(UserModel user)? fetchSuccess,
    TResult Function(UserModel user)? followSuccess,
    TResult Function(String exception)? followFail,
    TResult Function(String imageUrl)? pickImage,
  }) {
    return fetchSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetching,
    TResult Function(String exception)? fetchFail,
    TResult Function(UserModel user)? fetchSuccess,
    TResult Function(UserModel user)? followSuccess,
    TResult Function(String exception)? followFail,
    TResult Function(String imageUrl)? pickImage,
    required TResult orElse(),
  }) {
    if (fetchSuccess != null) {
      return fetchSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetching value) fetching,
    required TResult Function(_FetchFail value) fetchFail,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_FollowSuccess value) followSuccess,
    required TResult Function(_FollowFail value) followFail,
    required TResult Function(_PickImageState value) pickImage,
  }) {
    return fetchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetching value)? fetching,
    TResult Function(_FetchFail value)? fetchFail,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FollowSuccess value)? followSuccess,
    TResult Function(_FollowFail value)? followFail,
    TResult Function(_PickImageState value)? pickImage,
  }) {
    return fetchSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetching value)? fetching,
    TResult Function(_FetchFail value)? fetchFail,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FollowSuccess value)? followSuccess,
    TResult Function(_FollowFail value)? followFail,
    TResult Function(_PickImageState value)? pickImage,
    required TResult orElse(),
  }) {
    if (fetchSuccess != null) {
      return fetchSuccess(this);
    }
    return orElse();
  }
}

abstract class _FetchSuccess implements ProfileState {
  const factory _FetchSuccess({required final UserModel user}) =
      _$_FetchSuccess;

  UserModel get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_FetchSuccessCopyWith<_$_FetchSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FollowSuccessCopyWith<$Res> {
  factory _$$_FollowSuccessCopyWith(
          _$_FollowSuccess value, $Res Function(_$_FollowSuccess) then) =
      __$$_FollowSuccessCopyWithImpl<$Res>;
  $Res call({UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$_FollowSuccessCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements _$$_FollowSuccessCopyWith<$Res> {
  __$$_FollowSuccessCopyWithImpl(
      _$_FollowSuccess _value, $Res Function(_$_FollowSuccess) _then)
      : super(_value, (v) => _then(v as _$_FollowSuccess));

  @override
  _$_FollowSuccess get _value => super._value as _$_FollowSuccess;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$_FollowSuccess(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  @override
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_FollowSuccess implements _FollowSuccess {
  const _$_FollowSuccess({required this.user});

  @override
  final UserModel user;

  @override
  String toString() {
    return 'ProfileState.followSuccess(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FollowSuccess &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$_FollowSuccessCopyWith<_$_FollowSuccess> get copyWith =>
      __$$_FollowSuccessCopyWithImpl<_$_FollowSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetching,
    required TResult Function(String exception) fetchFail,
    required TResult Function(UserModel user) fetchSuccess,
    required TResult Function(UserModel user) followSuccess,
    required TResult Function(String exception) followFail,
    required TResult Function(String imageUrl) pickImage,
  }) {
    return followSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetching,
    TResult Function(String exception)? fetchFail,
    TResult Function(UserModel user)? fetchSuccess,
    TResult Function(UserModel user)? followSuccess,
    TResult Function(String exception)? followFail,
    TResult Function(String imageUrl)? pickImage,
  }) {
    return followSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetching,
    TResult Function(String exception)? fetchFail,
    TResult Function(UserModel user)? fetchSuccess,
    TResult Function(UserModel user)? followSuccess,
    TResult Function(String exception)? followFail,
    TResult Function(String imageUrl)? pickImage,
    required TResult orElse(),
  }) {
    if (followSuccess != null) {
      return followSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetching value) fetching,
    required TResult Function(_FetchFail value) fetchFail,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_FollowSuccess value) followSuccess,
    required TResult Function(_FollowFail value) followFail,
    required TResult Function(_PickImageState value) pickImage,
  }) {
    return followSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetching value)? fetching,
    TResult Function(_FetchFail value)? fetchFail,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FollowSuccess value)? followSuccess,
    TResult Function(_FollowFail value)? followFail,
    TResult Function(_PickImageState value)? pickImage,
  }) {
    return followSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetching value)? fetching,
    TResult Function(_FetchFail value)? fetchFail,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FollowSuccess value)? followSuccess,
    TResult Function(_FollowFail value)? followFail,
    TResult Function(_PickImageState value)? pickImage,
    required TResult orElse(),
  }) {
    if (followSuccess != null) {
      return followSuccess(this);
    }
    return orElse();
  }
}

abstract class _FollowSuccess implements ProfileState {
  const factory _FollowSuccess({required final UserModel user}) =
      _$_FollowSuccess;

  UserModel get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_FollowSuccessCopyWith<_$_FollowSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FollowFailCopyWith<$Res> {
  factory _$$_FollowFailCopyWith(
          _$_FollowFail value, $Res Function(_$_FollowFail) then) =
      __$$_FollowFailCopyWithImpl<$Res>;
  $Res call({String exception});
}

/// @nodoc
class __$$_FollowFailCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
    implements _$$_FollowFailCopyWith<$Res> {
  __$$_FollowFailCopyWithImpl(
      _$_FollowFail _value, $Res Function(_$_FollowFail) _then)
      : super(_value, (v) => _then(v as _$_FollowFail));

  @override
  _$_FollowFail get _value => super._value as _$_FollowFail;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_$_FollowFail(
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FollowFail implements _FollowFail {
  const _$_FollowFail({required this.exception});

  @override
  final String exception;

  @override
  String toString() {
    return 'ProfileState.followFail(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FollowFail &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  _$$_FollowFailCopyWith<_$_FollowFail> get copyWith =>
      __$$_FollowFailCopyWithImpl<_$_FollowFail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetching,
    required TResult Function(String exception) fetchFail,
    required TResult Function(UserModel user) fetchSuccess,
    required TResult Function(UserModel user) followSuccess,
    required TResult Function(String exception) followFail,
    required TResult Function(String imageUrl) pickImage,
  }) {
    return followFail(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetching,
    TResult Function(String exception)? fetchFail,
    TResult Function(UserModel user)? fetchSuccess,
    TResult Function(UserModel user)? followSuccess,
    TResult Function(String exception)? followFail,
    TResult Function(String imageUrl)? pickImage,
  }) {
    return followFail?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetching,
    TResult Function(String exception)? fetchFail,
    TResult Function(UserModel user)? fetchSuccess,
    TResult Function(UserModel user)? followSuccess,
    TResult Function(String exception)? followFail,
    TResult Function(String imageUrl)? pickImage,
    required TResult orElse(),
  }) {
    if (followFail != null) {
      return followFail(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetching value) fetching,
    required TResult Function(_FetchFail value) fetchFail,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_FollowSuccess value) followSuccess,
    required TResult Function(_FollowFail value) followFail,
    required TResult Function(_PickImageState value) pickImage,
  }) {
    return followFail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetching value)? fetching,
    TResult Function(_FetchFail value)? fetchFail,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FollowSuccess value)? followSuccess,
    TResult Function(_FollowFail value)? followFail,
    TResult Function(_PickImageState value)? pickImage,
  }) {
    return followFail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetching value)? fetching,
    TResult Function(_FetchFail value)? fetchFail,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FollowSuccess value)? followSuccess,
    TResult Function(_FollowFail value)? followFail,
    TResult Function(_PickImageState value)? pickImage,
    required TResult orElse(),
  }) {
    if (followFail != null) {
      return followFail(this);
    }
    return orElse();
  }
}

abstract class _FollowFail implements ProfileState {
  const factory _FollowFail({required final String exception}) = _$_FollowFail;

  String get exception => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_FollowFailCopyWith<_$_FollowFail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PickImageStateCopyWith<$Res> {
  factory _$$_PickImageStateCopyWith(
          _$_PickImageState value, $Res Function(_$_PickImageState) then) =
      __$$_PickImageStateCopyWithImpl<$Res>;
  $Res call({String imageUrl});
}

/// @nodoc
class __$$_PickImageStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements _$$_PickImageStateCopyWith<$Res> {
  __$$_PickImageStateCopyWithImpl(
      _$_PickImageState _value, $Res Function(_$_PickImageState) _then)
      : super(_value, (v) => _then(v as _$_PickImageState));

  @override
  _$_PickImageState get _value => super._value as _$_PickImageState;

  @override
  $Res call({
    Object? imageUrl = freezed,
  }) {
    return _then(_$_PickImageState(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PickImageState implements _PickImageState {
  const _$_PickImageState({required this.imageUrl});

  @override
  final String imageUrl;

  @override
  String toString() {
    return 'ProfileState.pickImage(imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PickImageState &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(imageUrl));

  @JsonKey(ignore: true)
  @override
  _$$_PickImageStateCopyWith<_$_PickImageState> get copyWith =>
      __$$_PickImageStateCopyWithImpl<_$_PickImageState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetching,
    required TResult Function(String exception) fetchFail,
    required TResult Function(UserModel user) fetchSuccess,
    required TResult Function(UserModel user) followSuccess,
    required TResult Function(String exception) followFail,
    required TResult Function(String imageUrl) pickImage,
  }) {
    return pickImage(imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetching,
    TResult Function(String exception)? fetchFail,
    TResult Function(UserModel user)? fetchSuccess,
    TResult Function(UserModel user)? followSuccess,
    TResult Function(String exception)? followFail,
    TResult Function(String imageUrl)? pickImage,
  }) {
    return pickImage?.call(imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetching,
    TResult Function(String exception)? fetchFail,
    TResult Function(UserModel user)? fetchSuccess,
    TResult Function(UserModel user)? followSuccess,
    TResult Function(String exception)? followFail,
    TResult Function(String imageUrl)? pickImage,
    required TResult orElse(),
  }) {
    if (pickImage != null) {
      return pickImage(imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetching value) fetching,
    required TResult Function(_FetchFail value) fetchFail,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_FollowSuccess value) followSuccess,
    required TResult Function(_FollowFail value) followFail,
    required TResult Function(_PickImageState value) pickImage,
  }) {
    return pickImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetching value)? fetching,
    TResult Function(_FetchFail value)? fetchFail,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FollowSuccess value)? followSuccess,
    TResult Function(_FollowFail value)? followFail,
    TResult Function(_PickImageState value)? pickImage,
  }) {
    return pickImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetching value)? fetching,
    TResult Function(_FetchFail value)? fetchFail,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FollowSuccess value)? followSuccess,
    TResult Function(_FollowFail value)? followFail,
    TResult Function(_PickImageState value)? pickImage,
    required TResult orElse(),
  }) {
    if (pickImage != null) {
      return pickImage(this);
    }
    return orElse();
  }
}

abstract class _PickImageState implements ProfileState {
  const factory _PickImageState({required final String imageUrl}) =
      _$_PickImageState;

  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_PickImageStateCopyWith<_$_PickImageState> get copyWith =>
      throw _privateConstructorUsedError;
}
