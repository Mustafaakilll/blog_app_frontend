import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'session_navigator_state.dart';

class SessionNavigatorCubit extends Cubit<SessionNavigatorState> {
  SessionNavigatorCubit() : super(const Home());

  int getPageIndex(SessionNavigatorState state) {
    switch (state.runtimeType) {
      case Home:
        return 0;
      case AddArticle:
        return 1;
      case Profile:
        return 2;
      default:
        return 0;
    }
  }

  void setPageIndex(int index) {
    switch (index) {
      case 0:
        emit(const Home());
        break;
      case 1:
        emit(const AddArticle());
        break;
      case 2:
        emit(const Profile());
    }
  }
}
