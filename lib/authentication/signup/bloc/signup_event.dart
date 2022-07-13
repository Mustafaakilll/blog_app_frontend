part of 'signup_bloc.dart';

@freezed
class SignupEvent with _$SignupEvent {
  const factory SignupEvent.usernameChanged({required String username}) = _UsernameChanged;

  const factory SignupEvent.emailChanged({required String email}) = _EmailChanged;

  const factory SignupEvent.passwordChanged({required String password}) = _PasswordChanged;

  const factory SignupEvent.formSubmit() = _FormSubmit;
}
