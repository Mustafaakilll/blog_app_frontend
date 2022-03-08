part of 'add_article_bloc.dart';

class AddArticleState extends Equatable {
  const AddArticleState({
    this.title = '',
    this.description = '',
    this.coverImage,
    this.formStatus = const InitialFormStatus(),
    this.tags = const [],
  });

  final String title;
  final String description;
  final String? coverImage;
  final FormStatus formStatus;
  final List<String> tags;

  @override
  List<Object?> get props => [title, description, coverImage, formStatus, tags];

  AddArticleState copyWith({
    String? title,
    String? description,
    String? coverImage,
    FormStatus? formStatus,
    List<String>? tags,
  }) {
    return AddArticleState(
      title: title ?? this.title,
      description: description ?? this.description,
      coverImage: coverImage ?? this.coverImage,
      formStatus: formStatus ?? this.formStatus,
      tags: tags ?? this.tags,
    );
  }
}
