part of 'add_article_bloc.dart';

@freezed
class AddArticleEvent with _$AddArticleEvent {
  const factory AddArticleEvent.titleChanged(String title) = _TitleChanged;

  const factory AddArticleEvent.descriptionChanged(String description) = _DescriptionChanged;

  const factory AddArticleEvent.tagsChanged(List<String> tags) = _TagsChanged;

  const factory AddArticleEvent.openImagePicker() = _OpenImagePicker;

  const factory AddArticleEvent.addArticle() = _AddArticle;
}
