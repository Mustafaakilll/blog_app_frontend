import 'package:json_annotation/json_annotation.dart';

part 'article_response_model.g.dart';

@JsonSerializable()
class ArticleResponseModel {
  ArticleResponseModel({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.title,
    required this.body,
    this.tagList,
    required this.coverImage,
    required this.author,
    required this.favoritedBy,
    required this.favoriteCount,
    required this.favorited,
  });

  factory ArticleResponseModel.fromJson(Map<String, dynamic> json) {
    return _$ArticleResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ArticleResponseModelToJson(this);

  int id;
  String createdAt;
  String updatedAt;
  String title;
  String body;
  List<String>? tagList;
  String coverImage;
  Author author;
  List<Author> favoritedBy;
  int favoriteCount;
  bool favorited;
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Author {
  Author({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.username,
    required this.email,
    required this.bio,
    required this.image,
  });

  factory Author.fromJson(Map<String, dynamic> json) {
    return _$AuthorFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AuthorToJson(this);

  int id;
  @JsonKey(name: 'createdAt')
  String createdAt;
  @JsonKey(name: 'updatedAt')
  String updatedAt;
  String username;
  String email;
  String bio;
  String image;
}
