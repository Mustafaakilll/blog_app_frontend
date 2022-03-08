import 'package:json_annotation/json_annotation.dart';

part 'add_article_model.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: false)
class AddArticleModel {
  AddArticleModel(this.title, this.body, this.tagList, this.coverImage);

  final String title;
  final String body;
  final List<String> tagList;
  final String coverImage;

  Map<String, dynamic> toJson() => _$AddArticleModelToJson(this);
}
