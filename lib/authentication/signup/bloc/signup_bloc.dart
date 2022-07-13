import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../utils/form_status.dart';
import '../../auth_flow/authentication_cubit.dart';
import '../../auth_repository.dart';
import '../model/request_signup_model.dart';

part 'signup_bloc.freezed.dart';
part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc({required this.authenticationCubit, required this.authRepository}) : super(const SignupState.initial()) {
    on<SignupEvent>((event, _) {
      event.when(
        usernameChanged: _onUsernameChanged,
        emailChanged: _onEmailChanged,
        passwordChanged: _onPasswordChanged,
        formSubmit: _onFormSubmit,
      );
    });
  }

  final AuthRepository authRepository;
  final AuthenticationCubit authenticationCubit;

  void _onEmailChanged(String email) {
    emit(state.copyWith(email: email));
  }

  void _onUsernameChanged(String username) {
    emit(state.copyWith(username: username));
  }

  void _onPasswordChanged(String password) {
    emit(state.copyWith(password: password));
  }

  Future<void> _onFormSubmit() async {
    emit(state.copyWith(formStatus: const FormSubmitting()));
    try {
      await authRepository
          .signUp(RequestSignupModel(username: state.username, email: state.email, password: state.password));
      emit(state.copyWith(formStatus: const SubmissionSuccess()));
      authenticationCubit.showHome();
    } on Exception catch (e) {
      emit(state.copyWith(formStatus: SubmissionFailure(exception: e.toString())));
    }
  }
}
