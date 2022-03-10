import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../utils/storage_repository.dart';
import '../user_repository.dart';
import 'model/user_model.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(this._userRepo, this._storageRepo) : super(const UserFetching()) {
    on<FetchUser>(_onFetchUser);
    on<FollowUser>(_onFollowUser);
    on<UnfollowUser>(_onUnfollowUser);
  }

  final UserRepository _userRepo;
  final StorageRepository _storageRepo;

  Future<void> _onFetchUser(FetchUser event, Emitter<ProfileState> emit) async {
    emit(const UserFetching());
    try {
      final userInfo = await _storageRepo.getData<Map<dynamic, dynamic>>('user');
      final user = await _userRepo.getUserByUsername(userInfo);
      emit(UserFetchedSuccessful(user: user));
    } catch (e) {
      emit(UserFetchedFailed(error: e.toString()));
    }
  }

  Future<void> _onFollowUser(FollowUser event, Emitter<ProfileState> emit) async {
    try {
      final user = await _userRepo.followUser(event.username);
      emit(UserFetchedSuccessful(user: user));
    } catch (e) {
      emit(UserFetchedFailed(error: e.toString()));
    }
  }

  Future<void> _onUnfollowUser(UnfollowUser event, Emitter<ProfileState> emit) async {
    try {
      final user = await _userRepo.unfollowUser(event.username);
      emit(UserFetchedSuccessful(user: user));
    } catch (e) {
      emit(UserFetchedFailed(error: e.toString()));
    }
  }
}
