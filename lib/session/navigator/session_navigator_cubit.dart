import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'session_navigator_state.dart';

class SessionNavigatorCubit extends Cubit<SessionNavigatorState> {
  SessionNavigatorCubit() : super(const HomePage());

  int getPageIndex(SessionNavigatorState state) {
    switch (state.runtimeType) {
      case HomePage:
        return 0;
      case AddArticlePage:
        return 1;
      case ProfilePage:
        return 2;
      default:
        return 0;
    }
  }

  void setPageIndex(int index) {
    switch (index) {
      case 0:
        emit(const HomePage());
        break;
      case 1:
        emit(const AddArticlePage());
        break;
      case 2:
        emit(const ProfilePage());
    }
  }
}
