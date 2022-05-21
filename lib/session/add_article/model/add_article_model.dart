import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_article_model.freezed.dart';
part 'add_article_model.g.dart';

@freezed
class AddArticleModel with _$AddArticleModel {
  const factory AddArticleModel(
    String title,
    String body,
    List<String> tagList,
    String coverImage,
  ) = _AddArticleModel;

  factory AddArticleModel.fromJson(Map<String, dynamic> json) => _$AddArticleModelFromJson(json);
}
