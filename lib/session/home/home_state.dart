part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class ArticleLoading extends HomeState {
  const ArticleLoading();
}

class ArticleLoadedSuccess extends HomeState {
  const ArticleLoadedSuccess(this.articles);

  final List<ArticleResponseModel> articles;

  @override
  List<Object> get props => [articles];
}

class NullArticles extends HomeState {
  const NullArticles();
}

class ArticleLoadedFail extends HomeState {
  const ArticleLoadedFail(this.exception);

  final String exception;

  @override
  List<Object> get props => [exception];
}

class ArticleLikeFailed extends HomeState {
  const ArticleLikeFailed(this.exception);

  final Exception exception;

  @override
  List<Object> get props => [exception];
}

class ArticleComment extends HomeState {
  const ArticleComment();
}
