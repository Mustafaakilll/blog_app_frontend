import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../article_repository.dart';
import '../model/article_response_model.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({required this.articleRepo}) : super(const HomeState.loading()) {
    on<HomeEvent>((event, _) {
      event.when(
        getArticle: _onGetArticle,
      );
    });
  }

  final ArticleRepository articleRepo;

  Future<void> _onGetArticle() async {
    emit(const HomeState.loading());
    try {
      final article = await articleRepo.getArticles();
      emit(HomeState.success(articles: article));
    } catch (e) {
      emit(HomeState.loadFail(exception: e.toString()));
    }
  }
}
