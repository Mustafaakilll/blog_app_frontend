// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_article_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddArticleModel _$AddArticleModelFromJson(Map<String, dynamic> json) {
  return _AddArticleModel.fromJson(json);
}

/// @nodoc
mixin _$AddArticleModel {
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  List<String> get tagList => throw _privateConstructorUsedError;
  String get coverImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddArticleModelCopyWith<AddArticleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddArticleModelCopyWith<$Res> {
  factory $AddArticleModelCopyWith(
          AddArticleModel value, $Res Function(AddArticleModel) then) =
      _$AddArticleModelCopyWithImpl<$Res>;
  $Res call(
      {String title, String body, List<String> tagList, String coverImage});
}

/// @nodoc
class _$AddArticleModelCopyWithImpl<$Res>
    implements $AddArticleModelCopyWith<$Res> {
  _$AddArticleModelCopyWithImpl(this._value, this._then);

  final AddArticleModel _value;
  // ignore: unused_field
  final $Res Function(AddArticleModel) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
    Object? tagList = freezed,
    Object? coverImage = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      tagList: tagList == freezed
          ? _value.tagList
          : tagList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      coverImage: coverImage == freezed
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AddArticleModelCopyWith<$Res>
    implements $AddArticleModelCopyWith<$Res> {
  factory _$$_AddArticleModelCopyWith(
          _$_AddArticleModel value, $Res Function(_$_AddArticleModel) then) =
      __$$_AddArticleModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title, String body, List<String> tagList, String coverImage});
}

/// @nodoc
class __$$_AddArticleModelCopyWithImpl<$Res>
    extends _$AddArticleModelCopyWithImpl<$Res>
    implements _$$_AddArticleModelCopyWith<$Res> {
  __$$_AddArticleModelCopyWithImpl(
      _$_AddArticleModel _value, $Res Function(_$_AddArticleModel) _then)
      : super(_value, (v) => _then(v as _$_AddArticleModel));

  @override
  _$_AddArticleModel get _value => super._value as _$_AddArticleModel;

  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
    Object? tagList = freezed,
    Object? coverImage = freezed,
  }) {
    return _then(_$_AddArticleModel(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      tagList == freezed
          ? _value._tagList
          : tagList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      coverImage == freezed
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddArticleModel implements _AddArticleModel {
  const _$_AddArticleModel(
      this.title, this.body, final List<String> tagList, this.coverImage)
      : _tagList = tagList;

  factory _$_AddArticleModel.fromJson(Map<String, dynamic> json) =>
      _$$_AddArticleModelFromJson(json);

  @override
  final String title;
  @override
  final String body;
  final List<String> _tagList;
  @override
  List<String> get tagList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tagList);
  }

  @override
  final String coverImage;

  @override
  String toString() {
    return 'AddArticleModel(title: $title, body: $body, tagList: $tagList, coverImage: $coverImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddArticleModel &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.body, body) &&
            const DeepCollectionEquality().equals(other._tagList, _tagList) &&
            const DeepCollectionEquality()
                .equals(other.coverImage, coverImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(body),
      const DeepCollectionEquality().hash(_tagList),
      const DeepCollectionEquality().hash(coverImage));

  @JsonKey(ignore: true)
  @override
  _$$_AddArticleModelCopyWith<_$_AddArticleModel> get copyWith =>
      __$$_AddArticleModelCopyWithImpl<_$_AddArticleModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddArticleModelToJson(this);
  }
}

abstract class _AddArticleModel implements AddArticleModel {
  const factory _AddArticleModel(final String title, final String body,
      final List<String> tagList, final String coverImage) = _$_AddArticleModel;

  factory _AddArticleModel.fromJson(Map<String, dynamic> json) =
      _$_AddArticleModel.fromJson;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get body => throw _privateConstructorUsedError;
  @override
  List<String> get tagList => throw _privateConstructorUsedError;
  @override
  String get coverImage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AddArticleModelCopyWith<_$_AddArticleModel> get copyWith =>
      throw _privateConstructorUsedError;
}
