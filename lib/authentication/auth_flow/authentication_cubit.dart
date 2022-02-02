import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../auth_repository.dart';

part 'authentication_state.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit({required this.authRepository}) : super(AuthenticationUnknown()) {
    attemptAutoLogin();
  }

  final AuthRepository authRepository;

  Future<void> attemptAutoLogin() async {
    try {
      await authRepository.attemptAutoLogin();
      emit(Authenticated());
    } catch (e) {
      emit(Unauthenticated());
    }
  }

  void showLogin() {
    emit(Unauthenticated());
  }

  void showHome() {
    emit(Authenticated());
  }

  void logOut() {
    authRepository.logOut();
    emit(Unauthenticated());
  }
}
