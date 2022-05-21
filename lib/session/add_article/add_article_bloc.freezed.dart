// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_article_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddArticleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(List<String> tags) tagsChanged,
    required TResult Function() openImagePicker,
    required TResult Function() addArticle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(List<String> tags)? tagsChanged,
    TResult Function()? openImagePicker,
    TResult Function()? addArticle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(List<String> tags)? tagsChanged,
    TResult Function()? openImagePicker,
    TResult Function()? addArticle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_OpenImagePicker value) openImagePicker,
    required TResult Function(_AddArticle value) addArticle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_OpenImagePicker value)? openImagePicker,
    TResult Function(_AddArticle value)? addArticle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_OpenImagePicker value)? openImagePicker,
    TResult Function(_AddArticle value)? addArticle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddArticleEventCopyWith<$Res> {
  factory $AddArticleEventCopyWith(
          AddArticleEvent value, $Res Function(AddArticleEvent) then) =
      _$AddArticleEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddArticleEventCopyWithImpl<$Res>
    implements $AddArticleEventCopyWith<$Res> {
  _$AddArticleEventCopyWithImpl(this._value, this._then);

  final AddArticleEvent _value;
  // ignore: unused_field
  final $Res Function(AddArticleEvent) _then;
}

/// @nodoc
abstract class _$$_TitleChangedCopyWith<$Res> {
  factory _$$_TitleChangedCopyWith(
          _$_TitleChanged value, $Res Function(_$_TitleChanged) then) =
      __$$_TitleChangedCopyWithImpl<$Res>;
  $Res call({String title});
}

/// @nodoc
class __$$_TitleChangedCopyWithImpl<$Res>
    extends _$AddArticleEventCopyWithImpl<$Res>
    implements _$$_TitleChangedCopyWith<$Res> {
  __$$_TitleChangedCopyWithImpl(
      _$_TitleChanged _value, $Res Function(_$_TitleChanged) _then)
      : super(_value, (v) => _then(v as _$_TitleChanged));

  @override
  _$_TitleChanged get _value => super._value as _$_TitleChanged;

  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_$_TitleChanged(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TitleChanged implements _TitleChanged {
  const _$_TitleChanged(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'AddArticleEvent.titleChanged(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TitleChanged &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$$_TitleChangedCopyWith<_$_TitleChanged> get copyWith =>
      __$$_TitleChangedCopyWithImpl<_$_TitleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(List<String> tags) tagsChanged,
    required TResult Function() openImagePicker,
    required TResult Function() addArticle,
  }) {
    return titleChanged(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(List<String> tags)? tagsChanged,
    TResult Function()? openImagePicker,
    TResult Function()? addArticle,
  }) {
    return titleChanged?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(List<String> tags)? tagsChanged,
    TResult Function()? openImagePicker,
    TResult Function()? addArticle,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_OpenImagePicker value) openImagePicker,
    required TResult Function(_AddArticle value) addArticle,
  }) {
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_OpenImagePicker value)? openImagePicker,
    TResult Function(_AddArticle value)? addArticle,
  }) {
    return titleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_OpenImagePicker value)? openImagePicker,
    TResult Function(_AddArticle value)? addArticle,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class _TitleChanged implements AddArticleEvent {
  const factory _TitleChanged(final String title) = _$_TitleChanged;

  String get title => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_TitleChangedCopyWith<_$_TitleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DescriptionChangedCopyWith<$Res> {
  factory _$$_DescriptionChangedCopyWith(_$_DescriptionChanged value,
          $Res Function(_$_DescriptionChanged) then) =
      __$$_DescriptionChangedCopyWithImpl<$Res>;
  $Res call({String description});
}

/// @nodoc
class __$$_DescriptionChangedCopyWithImpl<$Res>
    extends _$AddArticleEventCopyWithImpl<$Res>
    implements _$$_DescriptionChangedCopyWith<$Res> {
  __$$_DescriptionChangedCopyWithImpl(
      _$_DescriptionChanged _value, $Res Function(_$_DescriptionChanged) _then)
      : super(_value, (v) => _then(v as _$_DescriptionChanged));

  @override
  _$_DescriptionChanged get _value => super._value as _$_DescriptionChanged;

  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_$_DescriptionChanged(
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DescriptionChanged implements _DescriptionChanged {
  const _$_DescriptionChanged(this.description);

  @override
  final String description;

  @override
  String toString() {
    return 'AddArticleEvent.descriptionChanged(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DescriptionChanged &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_DescriptionChangedCopyWith<_$_DescriptionChanged> get copyWith =>
      __$$_DescriptionChangedCopyWithImpl<_$_DescriptionChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(List<String> tags) tagsChanged,
    required TResult Function() openImagePicker,
    required TResult Function() addArticle,
  }) {
    return descriptionChanged(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(List<String> tags)? tagsChanged,
    TResult Function()? openImagePicker,
    TResult Function()? addArticle,
  }) {
    return descriptionChanged?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(List<String> tags)? tagsChanged,
    TResult Function()? openImagePicker,
    TResult Function()? addArticle,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_OpenImagePicker value) openImagePicker,
    required TResult Function(_AddArticle value) addArticle,
  }) {
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_OpenImagePicker value)? openImagePicker,
    TResult Function(_AddArticle value)? addArticle,
  }) {
    return descriptionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_OpenImagePicker value)? openImagePicker,
    TResult Function(_AddArticle value)? addArticle,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class _DescriptionChanged implements AddArticleEvent {
  const factory _DescriptionChanged(final String description) =
      _$_DescriptionChanged;

  String get description => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_DescriptionChangedCopyWith<_$_DescriptionChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TagsChangedCopyWith<$Res> {
  factory _$$_TagsChangedCopyWith(
          _$_TagsChanged value, $Res Function(_$_TagsChanged) then) =
      __$$_TagsChangedCopyWithImpl<$Res>;
  $Res call({List<String> tags});
}

/// @nodoc
class __$$_TagsChangedCopyWithImpl<$Res>
    extends _$AddArticleEventCopyWithImpl<$Res>
    implements _$$_TagsChangedCopyWith<$Res> {
  __$$_TagsChangedCopyWithImpl(
      _$_TagsChanged _value, $Res Function(_$_TagsChanged) _then)
      : super(_value, (v) => _then(v as _$_TagsChanged));

  @override
  _$_TagsChanged get _value => super._value as _$_TagsChanged;

  @override
  $Res call({
    Object? tags = freezed,
  }) {
    return _then(_$_TagsChanged(
      tags == freezed
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_TagsChanged implements _TagsChanged {
  const _$_TagsChanged(final List<String> tags) : _tags = tags;

  final List<String> _tags;
  @override
  List<String> get tags {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'AddArticleEvent.tagsChanged(tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TagsChanged &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  _$$_TagsChangedCopyWith<_$_TagsChanged> get copyWith =>
      __$$_TagsChangedCopyWithImpl<_$_TagsChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(List<String> tags) tagsChanged,
    required TResult Function() openImagePicker,
    required TResult Function() addArticle,
  }) {
    return tagsChanged(tags);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(List<String> tags)? tagsChanged,
    TResult Function()? openImagePicker,
    TResult Function()? addArticle,
  }) {
    return tagsChanged?.call(tags);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(List<String> tags)? tagsChanged,
    TResult Function()? openImagePicker,
    TResult Function()? addArticle,
    required TResult orElse(),
  }) {
    if (tagsChanged != null) {
      return tagsChanged(tags);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_OpenImagePicker value) openImagePicker,
    required TResult Function(_AddArticle value) addArticle,
  }) {
    return tagsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_OpenImagePicker value)? openImagePicker,
    TResult Function(_AddArticle value)? addArticle,
  }) {
    return tagsChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_OpenImagePicker value)? openImagePicker,
    TResult Function(_AddArticle value)? addArticle,
    required TResult orElse(),
  }) {
    if (tagsChanged != null) {
      return tagsChanged(this);
    }
    return orElse();
  }
}

abstract class _TagsChanged implements AddArticleEvent {
  const factory _TagsChanged(final List<String> tags) = _$_TagsChanged;

  List<String> get tags => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_TagsChangedCopyWith<_$_TagsChanged> get copyWith =>
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
    extends _$AddArticleEventCopyWithImpl<$Res>
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
    return 'AddArticleEvent.openImagePicker()';
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
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(List<String> tags) tagsChanged,
    required TResult Function() openImagePicker,
    required TResult Function() addArticle,
  }) {
    return openImagePicker();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(List<String> tags)? tagsChanged,
    TResult Function()? openImagePicker,
    TResult Function()? addArticle,
  }) {
    return openImagePicker?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(List<String> tags)? tagsChanged,
    TResult Function()? openImagePicker,
    TResult Function()? addArticle,
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
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_OpenImagePicker value) openImagePicker,
    required TResult Function(_AddArticle value) addArticle,
  }) {
    return openImagePicker(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_OpenImagePicker value)? openImagePicker,
    TResult Function(_AddArticle value)? addArticle,
  }) {
    return openImagePicker?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_OpenImagePicker value)? openImagePicker,
    TResult Function(_AddArticle value)? addArticle,
    required TResult orElse(),
  }) {
    if (openImagePicker != null) {
      return openImagePicker(this);
    }
    return orElse();
  }
}

abstract class _OpenImagePicker implements AddArticleEvent {
  const factory _OpenImagePicker() = _$_OpenImagePicker;
}

/// @nodoc
abstract class _$$_AddArticleCopyWith<$Res> {
  factory _$$_AddArticleCopyWith(
          _$_AddArticle value, $Res Function(_$_AddArticle) then) =
      __$$_AddArticleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AddArticleCopyWithImpl<$Res>
    extends _$AddArticleEventCopyWithImpl<$Res>
    implements _$$_AddArticleCopyWith<$Res> {
  __$$_AddArticleCopyWithImpl(
      _$_AddArticle _value, $Res Function(_$_AddArticle) _then)
      : super(_value, (v) => _then(v as _$_AddArticle));

  @override
  _$_AddArticle get _value => super._value as _$_AddArticle;
}

/// @nodoc

class _$_AddArticle implements _AddArticle {
  const _$_AddArticle();

  @override
  String toString() {
    return 'AddArticleEvent.addArticle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AddArticle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(List<String> tags) tagsChanged,
    required TResult Function() openImagePicker,
    required TResult Function() addArticle,
  }) {
    return addArticle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(List<String> tags)? tagsChanged,
    TResult Function()? openImagePicker,
    TResult Function()? addArticle,
  }) {
    return addArticle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(List<String> tags)? tagsChanged,
    TResult Function()? openImagePicker,
    TResult Function()? addArticle,
    required TResult orElse(),
  }) {
    if (addArticle != null) {
      return addArticle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_TagsChanged value) tagsChanged,
    required TResult Function(_OpenImagePicker value) openImagePicker,
    required TResult Function(_AddArticle value) addArticle,
  }) {
    return addArticle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_OpenImagePicker value)? openImagePicker,
    TResult Function(_AddArticle value)? addArticle,
  }) {
    return addArticle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_TagsChanged value)? tagsChanged,
    TResult Function(_OpenImagePicker value)? openImagePicker,
    TResult Function(_AddArticle value)? addArticle,
    required TResult orElse(),
  }) {
    if (addArticle != null) {
      return addArticle(this);
    }
    return orElse();
  }
}

abstract class _AddArticle implements AddArticleEvent {
  const factory _AddArticle() = _$_AddArticle;
}

/// @nodoc
mixin _$AddArticleState {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get coverImage => throw _privateConstructorUsedError;
  FormStatus get formStatus => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String description,
            String? coverImage, FormStatus formStatus, List<String> tags)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title, String description, String? coverImage,
            FormStatus formStatus, List<String> tags)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String description, String? coverImage,
            FormStatus formStatus, List<String> tags)?
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
  $AddArticleStateCopyWith<AddArticleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddArticleStateCopyWith<$Res> {
  factory $AddArticleStateCopyWith(
          AddArticleState value, $Res Function(AddArticleState) then) =
      _$AddArticleStateCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String description,
      String? coverImage,
      FormStatus formStatus,
      List<String> tags});
}

/// @nodoc
class _$AddArticleStateCopyWithImpl<$Res>
    implements $AddArticleStateCopyWith<$Res> {
  _$AddArticleStateCopyWithImpl(this._value, this._then);

  final AddArticleState _value;
  // ignore: unused_field
  final $Res Function(AddArticleState) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? coverImage = freezed,
    Object? formStatus = freezed,
    Object? tags = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      coverImage: coverImage == freezed
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      formStatus: formStatus == freezed
          ? _value.formStatus
          : formStatus // ignore: cast_nullable_to_non_nullable
              as FormStatus,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $AddArticleStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String description,
      String? coverImage,
      FormStatus formStatus,
      List<String> tags});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$AddArticleStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? coverImage = freezed,
    Object? formStatus = freezed,
    Object? tags = freezed,
  }) {
    return _then(_$_Initial(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      coverImage: coverImage == freezed
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      formStatus: formStatus == freezed
          ? _value.formStatus
          : formStatus // ignore: cast_nullable_to_non_nullable
              as FormStatus,
      tags: tags == freezed
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {this.title = '',
      this.description = '',
      this.coverImage,
      this.formStatus = const InitialFormStatus(),
      final List<String> tags = const []})
      : _tags = tags;

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String description;
  @override
  final String? coverImage;
  @override
  @JsonKey()
  final FormStatus formStatus;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'AddArticleState.initial(title: $title, description: $description, coverImage: $coverImage, formStatus: $formStatus, tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.coverImage, coverImage) &&
            const DeepCollectionEquality()
                .equals(other.formStatus, formStatus) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(coverImage),
      const DeepCollectionEquality().hash(formStatus),
      const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String description,
            String? coverImage, FormStatus formStatus, List<String> tags)
        initial,
  }) {
    return initial(title, description, coverImage, formStatus, tags);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title, String description, String? coverImage,
            FormStatus formStatus, List<String> tags)?
        initial,
  }) {
    return initial?.call(title, description, coverImage, formStatus, tags);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String description, String? coverImage,
            FormStatus formStatus, List<String> tags)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(title, description, coverImage, formStatus, tags);
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

abstract class _Initial implements AddArticleState {
  const factory _Initial(
      {final String title,
      final String description,
      final String? coverImage,
      final FormStatus formStatus,
      final List<String> tags}) = _$_Initial;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String? get coverImage => throw _privateConstructorUsedError;
  @override
  FormStatus get formStatus => throw _privateConstructorUsedError;
  @override
  List<String> get tags => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
