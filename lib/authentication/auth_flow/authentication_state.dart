part of 'authentication_cubit.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.unknown() = Unknown;

  const factory AuthenticationState.authenticated() = Authenticated;

  const factory AuthenticationState.unauthenticated() = Unauthenticated;
}
