import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

import '../../../utils/utils.dart';
import '../../profile/view/profile_view.dart';
import '../../user_repository.dart';
import '../model/edit_profile_model.dart';

part 'edit_profile_bloc.freezed.dart';
part 'edit_profile_event.dart';
part 'edit_profile_state.dart';

class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {
  EditProfileBloc({required this.picker, required this.userRepo}) : super(const _Initial()) {
    on<EditProfileEvent>((event, emit) {
      event.when(
        usernameChanged: _onUsernameChanged,
        bioChanged: _onBioChanged,
        emailChanged: _onEmailChanged,
        openImagePicker: _onOpenImagePicker,
        saveUser: _onSaveUser,
      );
    });
  }

  final ImagePicker picker;
  final UserRepository userRepo;

  void _onUsernameChanged(String username) {
    emit(state.copyWith(username: username));
  }

  void _onBioChanged(String bio) {
    emit(state.copyWith(bio: bio));
  }

  void _onEmailChanged(String email) {
    emit(state.copyWith(email: email));
  }

  Future<void> _onOpenImagePicker() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    if (pickedFile == null) return;
    emit(state.copyWith(imagePath: pickedFile.path));
  }

  Future<void> _onSaveUser(EditProfileModel oldUser) async {
    emit(state.copyWith(formStatus: const FormSubmitting()));
    try {
      String? newImageUrl;
      if (state.imagePath != null) {
        newImageUrl = await userRepo.uploadUserImageToCloud(state.imagePath!, 'image');
      }
      final updatedUser = EditProfileModel(
        bio: state.bio ?? oldUser.bio,
        image: newImageUrl ?? oldUser.image,
        email: state.email ?? oldUser.email,
      );
      await userRepo.saveUser(updatedUser);
      AppConstants.navKey.currentState?.pop(ProfileView.route());
      emit(state.copyWith(formStatus: const SubmissionSuccess()));
    } on Exception catch (e) {
      log(e.toString());
      emit(state.copyWith(formStatus: SubmissionFailure(exception: e.toString())));
    }
  }
}
