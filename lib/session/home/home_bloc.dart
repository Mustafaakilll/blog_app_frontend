import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../article_repository.dart';
import 'model/article_response_model.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({required this.articleRepo}) : super(const ArticleLoading()) {
    on<GetArticle>(_onGetPosts);
  }

  final ArticleRepository articleRepo;

  FutureOr<void> _onGetPosts(GetArticle event, Emitter<HomeState> emit) async {
    emit(const ArticleLoading());
    try {
      final article = await articleRepo.getArticles();
      emit(ArticleLoadedSuccess(article));
    } catch (e) {
      emit(ArticleLoadedFail(e.toString()));
    }
  }
}
