part of 'authentication_cubit.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.unknown() = _Unknown;

  const factory AuthenticationState.authenticated() = _Authenticated;

  const factory AuthenticationState.unauthenticated() = _Unauthenticated;
}
