import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_navigator_cubit.freezed.dart';
part 'session_navigator_state.dart';

class SessionNavigatorCubit extends Cubit<SessionNavigatorState> {
  SessionNavigatorCubit() : super(const SessionNavigatorState.home());

  int getPageIndex(SessionNavigatorState state) {
    return state.when(
      home: () => 0,
      profile: () => 2,
      addArticle: () => 1,
    );
  }

  void setPageIndex(int index) {
    switch (index) {
      case 0:
        emit(const SessionNavigatorState.home());
        break;
      case 1:
        emit(const SessionNavigatorState.addArticle());
        break;
      case 2:
        emit(const SessionNavigatorState.profile());
    }
  }
}
