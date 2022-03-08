part of 'add_article_bloc.dart';

abstract class AddArticleEvent extends Equatable {
  const AddArticleEvent();
}

class TitleChanged extends AddArticleEvent {
  const TitleChanged(this.title);

  final String title;

  @override
  List<Object> get props => [title];
}

class DescriptionChanged extends AddArticleEvent {
  const DescriptionChanged(this.description);

  final String description;

  @override
  List<Object> get props => [description];
}

class TagsChanged extends AddArticleEvent {
  const TagsChanged(this.tags);

  final List<String> tags;

  @override
  List<Object> get props => [tags];
}

class OpenImagePicker extends AddArticleEvent {
  const OpenImagePicker();

  @override
  List<Object> get props => [];
}

class AddArticle extends AddArticleEvent {
  const AddArticle();

  @override
  List<Object> get props => [];
}
