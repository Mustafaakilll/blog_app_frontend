part of 'authentication_cubit.dart';

abstract class AuthenticationState extends Equatable {
  const AuthenticationState();
}

class AuthenticationUnknown extends AuthenticationState {
  @override
  List<Object> get props => [];
}

class Authenticated extends AuthenticationState {
  @override
  List<Object?> get props => [];
}

class Unauthenticated extends AuthenticationState {
  @override
  List<Object?> get props => [];
}
