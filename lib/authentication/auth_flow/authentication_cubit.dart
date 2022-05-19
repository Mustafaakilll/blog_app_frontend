import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../auth_repository.dart';

part 'authentication_cubit.freezed.dart';
part 'authentication_state.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit({required this.authRepository}) : super(const AuthenticationState.unknown()) {
    attemptAutoLogin();
  }

  final AuthRepository authRepository;

  Future<void> attemptAutoLogin() async {
    try {
      await authRepository.attemptAutoLogin();
      emit(const AuthenticationState.authenticated());
    } catch (e) {
      emit(const AuthenticationState.unauthenticated());
    }
  }

  void showLogin() {
    emit(const AuthenticationState.unauthenticated());
  }

  void showHome() {
    emit(const AuthenticationState.authenticated());
  }

  void logOut() {
    authRepository.logOut();
    emit(const AuthenticationState.unauthenticated());
  }
}
