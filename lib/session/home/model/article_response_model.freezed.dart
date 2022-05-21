// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticleResponseModel _$ArticleResponseModelFromJson(Map<String, dynamic> json) {
  return _ArticleResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ArticleResponseModel {
  int get id => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  List<String>? get tagList => throw _privateConstructorUsedError;
  String get coverImage => throw _privateConstructorUsedError;
  Author get author => throw _privateConstructorUsedError;
  List<Author> get favoritedBy => throw _privateConstructorUsedError;
  int get favoriteCount => throw _privateConstructorUsedError;
  bool get favorited => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleResponseModelCopyWith<ArticleResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleResponseModelCopyWith<$Res> {
  factory $ArticleResponseModelCopyWith(ArticleResponseModel value,
          $Res Function(ArticleResponseModel) then) =
      _$ArticleResponseModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String createdAt,
      String updatedAt,
      String title,
      String body,
      List<String>? tagList,
      String coverImage,
      Author author,
      List<Author> favoritedBy,
      int favoriteCount,
      bool favorited});

  $AuthorCopyWith<$Res> get author;
}

/// @nodoc
class _$ArticleResponseModelCopyWithImpl<$Res>
    implements $ArticleResponseModelCopyWith<$Res> {
  _$ArticleResponseModelCopyWithImpl(this._value, this._then);

  final ArticleResponseModel _value;
  // ignore: unused_field
  final $Res Function(ArticleResponseModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? tagList = freezed,
    Object? coverImage = freezed,
    Object? author = freezed,
    Object? favoritedBy = freezed,
    Object? favoriteCount = freezed,
    Object? favorited = freezed,
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
              as List<String>?,
      coverImage: coverImage == freezed
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author,
      favoritedBy: favoritedBy == freezed
          ? _value.favoritedBy
          : favoritedBy // ignore: cast_nullable_to_non_nullable
              as List<Author>,
      favoriteCount: favoriteCount == freezed
          ? _value.favoriteCount
          : favoriteCount // ignore: cast_nullable_to_non_nullable
              as int,
      favorited: favorited == freezed
          ? _value.favorited
          : favorited // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $AuthorCopyWith<$Res> get author {
    return $AuthorCopyWith<$Res>(_value.author, (value) {
      return _then(_value.copyWith(author: value));
    });
  }
}

/// @nodoc
abstract class _$$_ArticleResponseModelCopyWith<$Res>
    implements $ArticleResponseModelCopyWith<$Res> {
  factory _$$_ArticleResponseModelCopyWith(_$_ArticleResponseModel value,
          $Res Function(_$_ArticleResponseModel) then) =
      __$$_ArticleResponseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String createdAt,
      String updatedAt,
      String title,
      String body,
      List<String>? tagList,
      String coverImage,
      Author author,
      List<Author> favoritedBy,
      int favoriteCount,
      bool favorited});

  @override
  $AuthorCopyWith<$Res> get author;
}

/// @nodoc
class __$$_ArticleResponseModelCopyWithImpl<$Res>
    extends _$ArticleResponseModelCopyWithImpl<$Res>
    implements _$$_ArticleResponseModelCopyWith<$Res> {
  __$$_ArticleResponseModelCopyWithImpl(_$_ArticleResponseModel _value,
      $Res Function(_$_ArticleResponseModel) _then)
      : super(_value, (v) => _then(v as _$_ArticleResponseModel));

  @override
  _$_ArticleResponseModel get _value => super._value as _$_ArticleResponseModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? tagList = freezed,
    Object? coverImage = freezed,
    Object? author = freezed,
    Object? favoritedBy = freezed,
    Object? favoriteCount = freezed,
    Object? favorited = freezed,
  }) {
    return _then(_$_ArticleResponseModel(
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
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      tagList: tagList == freezed
          ? _value._tagList
          : tagList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      coverImage: coverImage == freezed
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author,
      favoritedBy: favoritedBy == freezed
          ? _value._favoritedBy
          : favoritedBy // ignore: cast_nullable_to_non_nullable
              as List<Author>,
      favoriteCount: favoriteCount == freezed
          ? _value.favoriteCount
          : favoriteCount // ignore: cast_nullable_to_non_nullable
              as int,
      favorited: favorited == freezed
          ? _value.favorited
          : favorited // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArticleResponseModel implements _ArticleResponseModel {
  const _$_ArticleResponseModel(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.title,
      required this.body,
      final List<String>? tagList,
      required this.coverImage,
      required this.author,
      required final List<Author> favoritedBy,
      required this.favoriteCount,
      required this.favorited})
      : _tagList = tagList,
        _favoritedBy = favoritedBy;

  factory _$_ArticleResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_ArticleResponseModelFromJson(json);

  @override
  final int id;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final String title;
  @override
  final String body;
  final List<String>? _tagList;
  @override
  List<String>? get tagList {
    final value = _tagList;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String coverImage;
  @override
  final Author author;
  final List<Author> _favoritedBy;
  @override
  List<Author> get favoritedBy {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoritedBy);
  }

  @override
  final int favoriteCount;
  @override
  final bool favorited;

  @override
  String toString() {
    return 'ArticleResponseModel(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, title: $title, body: $body, tagList: $tagList, coverImage: $coverImage, author: $author, favoritedBy: $favoritedBy, favoriteCount: $favoriteCount, favorited: $favorited)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticleResponseModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.body, body) &&
            const DeepCollectionEquality().equals(other._tagList, _tagList) &&
            const DeepCollectionEquality()
                .equals(other.coverImage, coverImage) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality()
                .equals(other._favoritedBy, _favoritedBy) &&
            const DeepCollectionEquality()
                .equals(other.favoriteCount, favoriteCount) &&
            const DeepCollectionEquality().equals(other.favorited, favorited));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(body),
      const DeepCollectionEquality().hash(_tagList),
      const DeepCollectionEquality().hash(coverImage),
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(_favoritedBy),
      const DeepCollectionEquality().hash(favoriteCount),
      const DeepCollectionEquality().hash(favorited));

  @JsonKey(ignore: true)
  @override
  _$$_ArticleResponseModelCopyWith<_$_ArticleResponseModel> get copyWith =>
      __$$_ArticleResponseModelCopyWithImpl<_$_ArticleResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticleResponseModelToJson(this);
  }
}

abstract class _ArticleResponseModel implements ArticleResponseModel {
  const factory _ArticleResponseModel(
      {required final int id,
      required final String createdAt,
      required final String updatedAt,
      required final String title,
      required final String body,
      final List<String>? tagList,
      required final String coverImage,
      required final Author author,
      required final List<Author> favoritedBy,
      required final int favoriteCount,
      required final bool favorited}) = _$_ArticleResponseModel;

  factory _ArticleResponseModel.fromJson(Map<String, dynamic> json) =
      _$_ArticleResponseModel.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get createdAt => throw _privateConstructorUsedError;
  @override
  String get updatedAt => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get body => throw _privateConstructorUsedError;
  @override
  List<String>? get tagList => throw _privateConstructorUsedError;
  @override
  String get coverImage => throw _privateConstructorUsedError;
  @override
  Author get author => throw _privateConstructorUsedError;
  @override
  List<Author> get favoritedBy => throw _privateConstructorUsedError;
  @override
  int get favoriteCount => throw _privateConstructorUsedError;
  @override
  bool get favorited => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ArticleResponseModelCopyWith<_$_ArticleResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Author _$AuthorFromJson(Map<String, dynamic> json) {
  return _Author.fromJson(json);
}

/// @nodoc
mixin _$Author {
  int get id => throw _privateConstructorUsedError;
  @FieldRename.snake
  String get createdAt => throw _privateConstructorUsedError;
  @FieldRename.snake
  String get updatedAt => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get bio => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthorCopyWith<Author> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorCopyWith<$Res> {
  factory $AuthorCopyWith(Author value, $Res Function(Author) then) =
      _$AuthorCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @FieldRename.snake String createdAt,
      @FieldRename.snake String updatedAt,
      String username,
      String email,
      String bio,
      String image});
}

/// @nodoc
class _$AuthorCopyWithImpl<$Res> implements $AuthorCopyWith<$Res> {
  _$AuthorCopyWithImpl(this._value, this._then);

  final Author _value;
  // ignore: unused_field
  final $Res Function(Author) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? username = freezed,
    Object? email = freezed,
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
abstract class _$$_AuthorCopyWith<$Res> implements $AuthorCopyWith<$Res> {
  factory _$$_AuthorCopyWith(_$_Author value, $Res Function(_$_Author) then) =
      __$$_AuthorCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @FieldRename.snake String createdAt,
      @FieldRename.snake String updatedAt,
      String username,
      String email,
      String bio,
      String image});
}

/// @nodoc
class __$$_AuthorCopyWithImpl<$Res> extends _$AuthorCopyWithImpl<$Res>
    implements _$$_AuthorCopyWith<$Res> {
  __$$_AuthorCopyWithImpl(_$_Author _value, $Res Function(_$_Author) _then)
      : super(_value, (v) => _then(v as _$_Author));

  @override
  _$_Author get _value => super._value as _$_Author;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? bio = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_Author(
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
class _$_Author implements _Author {
  const _$_Author(
      {required this.id,
      @FieldRename.snake required this.createdAt,
      @FieldRename.snake required this.updatedAt,
      required this.username,
      required this.email,
      required this.bio,
      required this.image});

  factory _$_Author.fromJson(Map<String, dynamic> json) =>
      _$$_AuthorFromJson(json);

  @override
  final int id;
  @override
  @FieldRename.snake
  final String createdAt;
  @override
  @FieldRename.snake
  final String updatedAt;
  @override
  final String username;
  @override
  final String email;
  @override
  final String bio;
  @override
  final String image;

  @override
  String toString() {
    return 'Author(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, username: $username, email: $email, bio: $bio, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Author &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.email, email) &&
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
      const DeepCollectionEquality().hash(bio),
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$$_AuthorCopyWith<_$_Author> get copyWith =>
      __$$_AuthorCopyWithImpl<_$_Author>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthorToJson(this);
  }
}

abstract class _Author implements Author {
  const factory _Author(
      {required final int id,
      @FieldRename.snake required final String createdAt,
      @FieldRename.snake required final String updatedAt,
      required final String username,
      required final String email,
      required final String bio,
      required final String image}) = _$_Author;

  factory _Author.fromJson(Map<String, dynamic> json) = _$_Author.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  @FieldRename.snake
  String get createdAt => throw _privateConstructorUsedError;
  @override
  @FieldRename.snake
  String get updatedAt => throw _privateConstructorUsedError;
  @override
  String get username => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get bio => throw _privateConstructorUsedError;
  @override
  String get image => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AuthorCopyWith<_$_Author> get copyWith =>
      throw _privateConstructorUsedError;
}
