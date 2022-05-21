import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_response_model.freezed.dart';
part 'article_response_model.g.dart';

@freezed
class ArticleResponseModel with _$ArticleResponseModel {
  const factory ArticleResponseModel({
    required int id,
    required String createdAt,
    required String updatedAt,
    required String title,
    required String body,
    List<String>? tagList,
    required String coverImage,
    required Author author,
    required List<Author> favoritedBy,
    required int favoriteCount,
    required bool favorited,
  }) = _ArticleResponseModel;

  factory ArticleResponseModel.fromJson(Map<String, dynamic> json) => _$ArticleResponseModelFromJson(json);
}

@freezed
class Author with _$Author {
  const factory Author({
    required int id,
    @FieldRename.snake required String createdAt,
    @FieldRename.snake required String updatedAt,
    required String username,
    required String email,
    required String bio,
    required String image,
  }) = _Author;

  factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);
}
