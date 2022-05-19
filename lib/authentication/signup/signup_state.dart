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

// class SignupState extends Equatable {
//   const SignupState({
//     this.username = '',
//     this.email = '',
//     this.password = '',
//     this.formStatus = const InitialFormStatus(),
//   });
//
//   final String username;
//   final String email;
//   final String password;
//   final FormStatus formStatus;
//
//   @override
//   List<Object> get props => [username, email, password, formStatus];
//
//   SignupState copyWith({
//     String? username,
//     String? email,
//     String? password,
//     FormStatus? formStatus,
//   }) {
//     return SignupState(
//       username: username ?? this.username,
//       email: email ?? this.email,
//       password: password ?? this.password,
//       formStatus: formStatus ?? this.formStatus,
//     );
//   }
// }
