import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../utils/form_status.dart';
import '../auth_repository.dart';
import 'model/login_model.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({required this.authRepository}) : super(const LoginState()) {
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<FormSubmitted>(_onFormSubmitted);
  }

  final AuthRepository authRepository;

  Future<void> _onEmailChanged(EmailChanged event, Emitter<LoginState> emit) async {
    emit(state.copyWith(email: event.email));
  }

  Future<void> _onPasswordChanged(PasswordChanged event, Emitter<LoginState> emit) async {
    emit(state.copyWith(password: event.password));
  }

  Future<void> _onFormSubmitted(FormSubmitted event, Emitter<LoginState> emit) async {
    emit(state.copyWith(formStatus: const FormSubmitting()));
    try {
      await authRepository.login(LoginModel(email: state.email, password: state.password));
      emit(state.copyWith(formStatus: const SubmissionSuccess()));
    } on Exception catch (e) {
      emit(state.copyWith(formStatus: SubmissionFailure(exception: e.toString())));
    }
  }
}
