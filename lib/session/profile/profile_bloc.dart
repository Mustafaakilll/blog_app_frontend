import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../utils/storage_repository.dart';
import '../user_repository.dart';
import 'model/user_model.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(this._userRepo, this._storageRepo) : super(const ProfileState.fetching()) {
    on<ProfileEvent>(
      (event, emit) {
        event.when(
          fetch: _onFetchUser,
          followUser: _onFollowUser,
          unfollowUser: _onUnfollowUser,
        );
      },
    );
  }

  final UserRepository _userRepo;
  final StorageRepository _storageRepo;

  Future<void> _onFetchUser() async {
    emit(const ProfileState.fetching());
    try {
      final userInfo = await _storageRepo.getData<Map<dynamic, dynamic>>('user');
      final user = await _userRepo.getUserByUsername(userInfo);
      emit(ProfileState.fetchSuccess(user: user));
    } catch (e) {
      emit(ProfileState.fetchFail(exception: e.toString()));
    }
  }

  Future<void> _onFollowUser(String username) async {
    try {
      final user = await _userRepo.followUser(username);
      emit(ProfileState.followSuccess(user: user));
    } catch (e) {
      emit(ProfileState.followFail(exception: e.toString()));
    }
  }

  Future<void> _onUnfollowUser(String username) async {
    try {
      final user = await _userRepo.unfollowUser(username);
      emit(ProfileState.followSuccess(user: user));
    } catch (e) {
      emit(ProfileState.followFail(exception: e.toString()));
    }
  }
}
