part of 'signup_bloc.dart';

abstract class SignupEvent extends Equatable {
  const SignupEvent();
}

class SignupUsernameChanged extends SignupEvent {
  const SignupUsernameChanged({required this.username});

  final String username;

  @override
  List<Object> get props => [username];
}

class SignupEmailChanged extends SignupEvent {
  const SignupEmailChanged({required this.email});

  final String email;

  @override
  List<Object> get props => [email];
}

class SignupPasswordChanged extends SignupEvent {
  const SignupPasswordChanged({required this.password});

  final String password;

  @override
  List<Object> get props => [password];
}

class SignupFormSubmitted extends SignupEvent {
  const SignupFormSubmitted();

  @override
  List<Object> get props => [];
}
