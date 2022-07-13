part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial({
    @Default('') String email,
    @Default('') String password,
    @Default(InitialFormStatus()) FormStatus formStatus,
  }) = _Initial;
}
