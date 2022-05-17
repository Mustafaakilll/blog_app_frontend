part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.emailChanged({required String email}) = EmailChanged;

  const factory LoginEvent.passwordChanged({required String password}) = PasswordChanged;

  const factory LoginEvent.formSubmit() = FormSubmit;
}
