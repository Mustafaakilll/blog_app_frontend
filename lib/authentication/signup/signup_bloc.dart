import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../utils/form_status.dart';
import '../auth_flow/authentication_cubit.dart';
import '../auth_repository.dart';
import 'model/request_signup_model.dart';

part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc({required this.authenticationCubit, required this.authRepository}) : super(const SignupState()) {
    on<SignupEmailChanged>(_onEmailChanged);
    on<SignupUsernameChanged>(_onUsernameChanged);
    on<SignupPasswordChanged>(_onPasswordChanged);
    on<SignupFormSubmitted>(_onFormSubmitted);
  }

  final AuthRepository authRepository;
  final AuthenticationCubit authenticationCubit;

  void _onEmailChanged(SignupEmailChanged event, Emitter<SignupState> emit) {
    emit(state.copyWith(email: event.email));
  }

  void _onUsernameChanged(SignupUsernameChanged event, Emitter<SignupState> emit) {
    emit(state.copyWith(username: event.username));
  }

  void _onPasswordChanged(SignupPasswordChanged event, Emitter<SignupState> emit) {
    emit(state.copyWith(password: event.password));
  }

  Future<void> _onFormSubmitted(SignupFormSubmitted event, Emitter<SignupState> emit) async {
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
