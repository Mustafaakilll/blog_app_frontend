part of 'signup_bloc.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState.initial({
    @Default('') String email,
    @Default('') String username,
    @Default('') String password,
    @Default(InitialFormStatus()) FormStatus formStatus,
  }) = Initial;
}
