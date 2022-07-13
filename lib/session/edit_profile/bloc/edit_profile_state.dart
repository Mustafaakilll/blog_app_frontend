part of 'edit_profile_bloc.dart';

@freezed
class EditProfileState with _$EditProfileState {
  const factory EditProfileState.initial({
    String? username,
    String? bio,
    String? email,
    String? imagePath,
    @Default(InitialFormStatus()) FormStatus formStatus,
  }) = _Initial;
}
