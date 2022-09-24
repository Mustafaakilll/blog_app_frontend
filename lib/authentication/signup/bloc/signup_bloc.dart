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
    on<SignupEvent>((event, emit) {
      event.when(
        usernameChanged: (username) => _onUsernameChanged(username, emit),
        emailChanged: (email) => _onEmailChanged(email, emit),
        passwordChanged: (password) => _onPasswordChanged(password, emit),
        formSubmit: () => _onFormSubmit(emit),
      );
    });
  }

  final AuthRepository authRepository;
  final AuthenticationCubit authenticationCubit;

  void _onEmailChanged(String email, Emitter<SignupState> emit) {
    emit(state.copyWith(email: email));
  }

  void _onUsernameChanged(String username, Emitter<SignupState> emit) {
    emit(state.copyWith(username: username));
  }

  void _onPasswordChanged(String password, Emitter<SignupState> emit) {
    emit(state.copyWith(password: password));
  }

  Future<void> _onFormSubmit(Emitter<SignupState> emit) async {
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
