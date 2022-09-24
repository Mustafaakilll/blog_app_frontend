import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

import '../../../utils/storage_repository.dart';
import '../../user_repository.dart';
import '../model/user_model.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc({required this.picker, required this.userRepo, required this.storageRepo})
      : super(const ProfileState.fetching()) {
    on<ProfileEvent>(((event, emit) {
      event.when(
        fetch: () => _onFetchUser(emit),
        followUser: (username) => _onFollowUser(username, emit),
        unfollowUser: (username) => _onUnfollowUser(username, emit),
        pickImage: () => _onPickImage(emit),
      );
    }));
  }

  final ImagePicker picker;
  final UserRepository userRepo;
  final StorageRepository storageRepo;
  late UserModel _user;

  UserModel get user => _user;

  Future<void> _onFetchUser(Emitter<ProfileState> emit) async {
    emit(const ProfileState.fetching());
    try {
      final userInfo = await storageRepo.getData<Map<dynamic, dynamic>>('user');
      _user = await userRepo.getUserByUsername(userInfo);
      emit(ProfileState.fetchSuccess(user: user));
    } catch (e) {
      emit(ProfileState.fetchFail(exception: e.toString()));
    }
  }

  Future<void> _onFollowUser(String username, Emitter<ProfileState> emit) async {
    try {
      final user = await userRepo.followUser(username);
      emit(ProfileState.followSuccess(user: user));
    } catch (e) {
      emit(ProfileState.followFail(exception: e.toString()));
    }
  }

  Future<void> _onUnfollowUser(String username, Emitter<ProfileState> emit) async {
    try {
      final user = await userRepo.unfollowUser(username);
      emit(ProfileState.followSuccess(user: user));
    } catch (e) {
      emit(ProfileState.followFail(exception: e.toString()));
    }
  }

  Future<void> _onPickImage(Emitter<ProfileState> emit) async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile == null) return;
    emit(ProfileState.pickImage(imageUrl: pickedFile.path));
  }
}
