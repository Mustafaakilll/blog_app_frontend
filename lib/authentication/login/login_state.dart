part of 'login_bloc.dart';

class LoginState extends Equatable {
  const LoginState({this.email = '', this.password = '', this.formStatus = const InitialFormStatus()});

  final String email;
  final String password;
  final FormStatus formStatus;

  @override
  List<Object> get props => [email, password, formStatus];

  LoginState copyWith({
    String? email,
    String? password,
    FormStatus? formStatus,
  }) {
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password,
      formStatus: formStatus ?? this.formStatus,
    );
  }
}
