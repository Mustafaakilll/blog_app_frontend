part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading() = _Loading;

  const factory HomeState.success({required List<ArticleResponseModel> articles}) = _Success;

  const factory HomeState.nullArticle() = _Null;

  const factory HomeState.loadFail({required String exception}) = _LoadFail;

  const factory HomeState.likeFail({required String exception}) = _LikeFail;

  const factory HomeState.comment() = _Comment;
}
