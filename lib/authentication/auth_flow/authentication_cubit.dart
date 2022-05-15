import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../auth_repository.dart';

part 'authentication_cubit.freezed.dart';
part 'authentication_state.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit({required this.authRepository}) : super(const Unknown()) {
    attemptAutoLogin();
  }

  final AuthRepository authRepository;

  Future<void> attemptAutoLogin() async {
    try {
      await authRepository.attemptAutoLogin();
      emit(const Authenticated());
    } catch (e) {
      emit(const Unauthenticated());
    }
  }

  void showLogin() {
    emit(const Unauthenticated());
  }

  void showHome() {
    emit(const Authenticated());
  }

  void logOut() {
    authRepository.logOut();
    emit(const Unauthenticated());
  }
}
