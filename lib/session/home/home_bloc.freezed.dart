// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getArticle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getArticle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getArticle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetArticle value) getArticle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetArticle value)? getArticle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetArticle value)? getArticle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class _$$_GetArticleCopyWith<$Res> {
  factory _$$_GetArticleCopyWith(
          _$_GetArticle value, $Res Function(_$_GetArticle) then) =
      __$$_GetArticleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetArticleCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$$_GetArticleCopyWith<$Res> {
  __$$_GetArticleCopyWithImpl(
      _$_GetArticle _value, $Res Function(_$_GetArticle) _then)
      : super(_value, (v) => _then(v as _$_GetArticle));

  @override
  _$_GetArticle get _value => super._value as _$_GetArticle;
}

/// @nodoc

class _$_GetArticle implements _GetArticle {
  const _$_GetArticle();

  @override
  String toString() {
    return 'HomeEvent.getArticle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetArticle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getArticle,
  }) {
    return getArticle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getArticle,
  }) {
    return getArticle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getArticle,
    required TResult orElse(),
  }) {
    if (getArticle != null) {
      return getArticle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetArticle value) getArticle,
  }) {
    return getArticle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetArticle value)? getArticle,
  }) {
    return getArticle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetArticle value)? getArticle,
    required TResult orElse(),
  }) {
    if (getArticle != null) {
      return getArticle(this);
    }
    return orElse();
  }
}

abstract class _GetArticle implements HomeEvent {
  const factory _GetArticle() = _$_GetArticle;
}

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ArticleResponseModel> articles) success,
    required TResult Function() nullArticle,
    required TResult Function(String exception) loadFail,
    required TResult Function(String exception) likeFail,
    required TResult Function() comment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ArticleResponseModel> articles)? success,
    TResult Function()? nullArticle,
    TResult Function(String exception)? loadFail,
    TResult Function(String exception)? likeFail,
    TResult Function()? comment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ArticleResponseModel> articles)? success,
    TResult Function()? nullArticle,
    TResult Function(String exception)? loadFail,
    TResult Function(String exception)? likeFail,
    TResult Function()? comment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Null value) nullArticle,
    required TResult Function(_LoadFail value) loadFail,
    required TResult Function(_LikeFail value) likeFail,
    required TResult Function(_Comment value) comment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Null value)? nullArticle,
    TResult Function(_LoadFail value)? loadFail,
    TResult Function(_LikeFail value)? likeFail,
    TResult Function(_Comment value)? comment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Null value)? nullArticle,
    TResult Function(_LoadFail value)? loadFail,
    TResult Function(_LikeFail value)? likeFail,
    TResult Function(_Comment value)? comment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, (v) => _then(v as _$_Loading));

  @override
  _$_Loading get _value => super._value as _$_Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ArticleResponseModel> articles) success,
    required TResult Function() nullArticle,
    required TResult Function(String exception) loadFail,
    required TResult Function(String exception) likeFail,
    required TResult Function() comment,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ArticleResponseModel> articles)? success,
    TResult Function()? nullArticle,
    TResult Function(String exception)? loadFail,
    TResult Function(String exception)? likeFail,
    TResult Function()? comment,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ArticleResponseModel> articles)? success,
    TResult Function()? nullArticle,
    TResult Function(String exception)? loadFail,
    TResult Function(String exception)? likeFail,
    TResult Function()? comment,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Null value) nullArticle,
    required TResult Function(_LoadFail value) loadFail,
    required TResult Function(_LikeFail value) likeFail,
    required TResult Function(_Comment value) comment,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Null value)? nullArticle,
    TResult Function(_LoadFail value)? loadFail,
    TResult Function(_LikeFail value)? likeFail,
    TResult Function(_Comment value)? comment,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Null value)? nullArticle,
    TResult Function(_LoadFail value)? loadFail,
    TResult Function(_LikeFail value)? likeFail,
    TResult Function(_Comment value)? comment,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements HomeState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  $Res call({List<ArticleResponseModel> articles});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, (v) => _then(v as _$_Success));

  @override
  _$_Success get _value => super._value as _$_Success;

  @override
  $Res call({
    Object? articles = freezed,
  }) {
    return _then(_$_Success(
      articles: articles == freezed
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<ArticleResponseModel>,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success({required final List<ArticleResponseModel> articles})
      : _articles = articles;

  final List<ArticleResponseModel> _articles;
  @override
  List<ArticleResponseModel> get articles {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  String toString() {
    return 'HomeState.success(articles: $articles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_articles));

  @JsonKey(ignore: true)
  @override
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ArticleResponseModel> articles) success,
    required TResult Function() nullArticle,
    required TResult Function(String exception) loadFail,
    required TResult Function(String exception) likeFail,
    required TResult Function() comment,
  }) {
    return success(articles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ArticleResponseModel> articles)? success,
    TResult Function()? nullArticle,
    TResult Function(String exception)? loadFail,
    TResult Function(String exception)? likeFail,
    TResult Function()? comment,
  }) {
    return success?.call(articles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ArticleResponseModel> articles)? success,
    TResult Function()? nullArticle,
    TResult Function(String exception)? loadFail,
    TResult Function(String exception)? likeFail,
    TResult Function()? comment,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(articles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Null value) nullArticle,
    required TResult Function(_LoadFail value) loadFail,
    required TResult Function(_LikeFail value) likeFail,
    required TResult Function(_Comment value) comment,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Null value)? nullArticle,
    TResult Function(_LoadFail value)? loadFail,
    TResult Function(_LikeFail value)? likeFail,
    TResult Function(_Comment value)? comment,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Null value)? nullArticle,
    TResult Function(_LoadFail value)? loadFail,
    TResult Function(_LikeFail value)? likeFail,
    TResult Function(_Comment value)? comment,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements HomeState {
  const factory _Success({required final List<ArticleResponseModel> articles}) =
      _$_Success;

  List<ArticleResponseModel> get articles => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NullCopyWith<$Res> {
  factory _$$_NullCopyWith(_$_Null value, $Res Function(_$_Null) then) =
      __$$_NullCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NullCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$$_NullCopyWith<$Res> {
  __$$_NullCopyWithImpl(_$_Null _value, $Res Function(_$_Null) _then)
      : super(_value, (v) => _then(v as _$_Null));

  @override
  _$_Null get _value => super._value as _$_Null;
}

/// @nodoc

class _$_Null implements _Null {
  const _$_Null();

  @override
  String toString() {
    return 'HomeState.nullArticle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Null);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ArticleResponseModel> articles) success,
    required TResult Function() nullArticle,
    required TResult Function(String exception) loadFail,
    required TResult Function(String exception) likeFail,
    required TResult Function() comment,
  }) {
    return nullArticle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ArticleResponseModel> articles)? success,
    TResult Function()? nullArticle,
    TResult Function(String exception)? loadFail,
    TResult Function(String exception)? likeFail,
    TResult Function()? comment,
  }) {
    return nullArticle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ArticleResponseModel> articles)? success,
    TResult Function()? nullArticle,
    TResult Function(String exception)? loadFail,
    TResult Function(String exception)? likeFail,
    TResult Function()? comment,
    required TResult orElse(),
  }) {
    if (nullArticle != null) {
      return nullArticle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Null value) nullArticle,
    required TResult Function(_LoadFail value) loadFail,
    required TResult Function(_LikeFail value) likeFail,
    required TResult Function(_Comment value) comment,
  }) {
    return nullArticle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Null value)? nullArticle,
    TResult Function(_LoadFail value)? loadFail,
    TResult Function(_LikeFail value)? likeFail,
    TResult Function(_Comment value)? comment,
  }) {
    return nullArticle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Null value)? nullArticle,
    TResult Function(_LoadFail value)? loadFail,
    TResult Function(_LikeFail value)? likeFail,
    TResult Function(_Comment value)? comment,
    required TResult orElse(),
  }) {
    if (nullArticle != null) {
      return nullArticle(this);
    }
    return orElse();
  }
}

abstract class _Null implements HomeState {
  const factory _Null() = _$_Null;
}

/// @nodoc
abstract class _$$_LoadFailCopyWith<$Res> {
  factory _$$_LoadFailCopyWith(
          _$_LoadFail value, $Res Function(_$_LoadFail) then) =
      __$$_LoadFailCopyWithImpl<$Res>;
  $Res call({String exception});
}

/// @nodoc
class __$$_LoadFailCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$$_LoadFailCopyWith<$Res> {
  __$$_LoadFailCopyWithImpl(
      _$_LoadFail _value, $Res Function(_$_LoadFail) _then)
      : super(_value, (v) => _then(v as _$_LoadFail));

  @override
  _$_LoadFail get _value => super._value as _$_LoadFail;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_$_LoadFail(
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoadFail implements _LoadFail {
  const _$_LoadFail({required this.exception});

  @override
  final String exception;

  @override
  String toString() {
    return 'HomeState.loadFail(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFail &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  _$$_LoadFailCopyWith<_$_LoadFail> get copyWith =>
      __$$_LoadFailCopyWithImpl<_$_LoadFail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ArticleResponseModel> articles) success,
    required TResult Function() nullArticle,
    required TResult Function(String exception) loadFail,
    required TResult Function(String exception) likeFail,
    required TResult Function() comment,
  }) {
    return loadFail(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ArticleResponseModel> articles)? success,
    TResult Function()? nullArticle,
    TResult Function(String exception)? loadFail,
    TResult Function(String exception)? likeFail,
    TResult Function()? comment,
  }) {
    return loadFail?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ArticleResponseModel> articles)? success,
    TResult Function()? nullArticle,
    TResult Function(String exception)? loadFail,
    TResult Function(String exception)? likeFail,
    TResult Function()? comment,
    required TResult orElse(),
  }) {
    if (loadFail != null) {
      return loadFail(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Null value) nullArticle,
    required TResult Function(_LoadFail value) loadFail,
    required TResult Function(_LikeFail value) likeFail,
    required TResult Function(_Comment value) comment,
  }) {
    return loadFail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Null value)? nullArticle,
    TResult Function(_LoadFail value)? loadFail,
    TResult Function(_LikeFail value)? likeFail,
    TResult Function(_Comment value)? comment,
  }) {
    return loadFail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Null value)? nullArticle,
    TResult Function(_LoadFail value)? loadFail,
    TResult Function(_LikeFail value)? likeFail,
    TResult Function(_Comment value)? comment,
    required TResult orElse(),
  }) {
    if (loadFail != null) {
      return loadFail(this);
    }
    return orElse();
  }
}

abstract class _LoadFail implements HomeState {
  const factory _LoadFail({required final String exception}) = _$_LoadFail;

  String get exception => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_LoadFailCopyWith<_$_LoadFail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LikeFailCopyWith<$Res> {
  factory _$$_LikeFailCopyWith(
          _$_LikeFail value, $Res Function(_$_LikeFail) then) =
      __$$_LikeFailCopyWithImpl<$Res>;
  $Res call({String exception});
}

/// @nodoc
class __$$_LikeFailCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$$_LikeFailCopyWith<$Res> {
  __$$_LikeFailCopyWithImpl(
      _$_LikeFail _value, $Res Function(_$_LikeFail) _then)
      : super(_value, (v) => _then(v as _$_LikeFail));

  @override
  _$_LikeFail get _value => super._value as _$_LikeFail;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_$_LikeFail(
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LikeFail implements _LikeFail {
  const _$_LikeFail({required this.exception});

  @override
  final String exception;

  @override
  String toString() {
    return 'HomeState.likeFail(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LikeFail &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  _$$_LikeFailCopyWith<_$_LikeFail> get copyWith =>
      __$$_LikeFailCopyWithImpl<_$_LikeFail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ArticleResponseModel> articles) success,
    required TResult Function() nullArticle,
    required TResult Function(String exception) loadFail,
    required TResult Function(String exception) likeFail,
    required TResult Function() comment,
  }) {
    return likeFail(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ArticleResponseModel> articles)? success,
    TResult Function()? nullArticle,
    TResult Function(String exception)? loadFail,
    TResult Function(String exception)? likeFail,
    TResult Function()? comment,
  }) {
    return likeFail?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ArticleResponseModel> articles)? success,
    TResult Function()? nullArticle,
    TResult Function(String exception)? loadFail,
    TResult Function(String exception)? likeFail,
    TResult Function()? comment,
    required TResult orElse(),
  }) {
    if (likeFail != null) {
      return likeFail(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Null value) nullArticle,
    required TResult Function(_LoadFail value) loadFail,
    required TResult Function(_LikeFail value) likeFail,
    required TResult Function(_Comment value) comment,
  }) {
    return likeFail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Null value)? nullArticle,
    TResult Function(_LoadFail value)? loadFail,
    TResult Function(_LikeFail value)? likeFail,
    TResult Function(_Comment value)? comment,
  }) {
    return likeFail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Null value)? nullArticle,
    TResult Function(_LoadFail value)? loadFail,
    TResult Function(_LikeFail value)? likeFail,
    TResult Function(_Comment value)? comment,
    required TResult orElse(),
  }) {
    if (likeFail != null) {
      return likeFail(this);
    }
    return orElse();
  }
}

abstract class _LikeFail implements HomeState {
  const factory _LikeFail({required final String exception}) = _$_LikeFail;

  String get exception => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_LikeFailCopyWith<_$_LikeFail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CommentCopyWith<$Res> {
  factory _$$_CommentCopyWith(
          _$_Comment value, $Res Function(_$_Comment) then) =
      __$$_CommentCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CommentCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$$_CommentCopyWith<$Res> {
  __$$_CommentCopyWithImpl(_$_Comment _value, $Res Function(_$_Comment) _then)
      : super(_value, (v) => _then(v as _$_Comment));

  @override
  _$_Comment get _value => super._value as _$_Comment;
}

/// @nodoc

class _$_Comment implements _Comment {
  const _$_Comment();

  @override
  String toString() {
    return 'HomeState.comment()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Comment);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ArticleResponseModel> articles) success,
    required TResult Function() nullArticle,
    required TResult Function(String exception) loadFail,
    required TResult Function(String exception) likeFail,
    required TResult Function() comment,
  }) {
    return comment();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ArticleResponseModel> articles)? success,
    TResult Function()? nullArticle,
    TResult Function(String exception)? loadFail,
    TResult Function(String exception)? likeFail,
    TResult Function()? comment,
  }) {
    return comment?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ArticleResponseModel> articles)? success,
    TResult Function()? nullArticle,
    TResult Function(String exception)? loadFail,
    TResult Function(String exception)? likeFail,
    TResult Function()? comment,
    required TResult orElse(),
  }) {
    if (comment != null) {
      return comment();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Null value) nullArticle,
    required TResult Function(_LoadFail value) loadFail,
    required TResult Function(_LikeFail value) likeFail,
    required TResult Function(_Comment value) comment,
  }) {
    return comment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Null value)? nullArticle,
    TResult Function(_LoadFail value)? loadFail,
    TResult Function(_LikeFail value)? likeFail,
    TResult Function(_Comment value)? comment,
  }) {
    return comment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Null value)? nullArticle,
    TResult Function(_LoadFail value)? loadFail,
    TResult Function(_LikeFail value)? likeFail,
    TResult Function(_Comment value)? comment,
    required TResult orElse(),
  }) {
    if (comment != null) {
      return comment(this);
    }
    return orElse();
  }
}

abstract class _Comment implements HomeState {
  const factory _Comment() = _$_Comment;
}
