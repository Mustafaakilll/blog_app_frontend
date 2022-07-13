part of 'edit_profile_bloc.dart';

@freezed
class EditProfileEvent with _$EditProfileEvent {
  const factory EditProfileEvent.usernameChanged(String username) = _UsernameChanged;

  const factory EditProfileEvent.bioChanged(String bio) = _BioChanged;

  const factory EditProfileEvent.emailChanged(String email) = _EmailChanged;

  const factory EditProfileEvent.openImagePicker() = _OpenImagePicker;

  const factory EditProfileEvent.saveUser(EditProfileModel data) = _SaveUser;
}
