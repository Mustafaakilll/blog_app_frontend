part of 'add_article_bloc.dart';

@freezed
class AddArticleState with _$AddArticleState {
  const factory AddArticleState.initial({
    @Default('') String title,
    @Default('') String description,
    String? coverImage,
    @Default(InitialFormStatus()) FormStatus formStatus,
    @Default([]) List<String> tags,
  }) = _Initial;
}
