import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../utils/form_status.dart';
import '../auth_flow/authentication_cubit.dart';
import '../auth_repository.dart';
import 'model/request_login_model.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({required this.authenticationCubit, required this.authRepository}) : super(const Initial()) {
    on<LoginEvent>((event, emit) {
      event.when(
        emailChanged: _onEmailChanged,
        passwordChanged: _onPasswordChanged,
        formSubmit: _onFormSubmitted,
      );
    });
  }

  final AuthRepository authRepository;
  final AuthenticationCubit authenticationCubit;

  void _onEmailChanged(String email) {
    emit(state.copyWith(email: email));
  }

  void _onPasswordChanged(String password) {
    emit(state.copyWith(password: password));
  }

  Future<void> _onFormSubmitted() async {
    emit(state.copyWith(formStatus: const FormSubmitting()));
    try {
      await authRepository.login(RequestLoginModel(email: state.email, password: state.password));
      emit(state.copyWith(formStatus: const SubmissionSuccess()));
      authenticationCubit.showHome();
    } on Exception catch (e) {
      emit(state.copyWith(formStatus: SubmissionFailure(exception: e.toString())));
    }
  }
}
