part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.fetching() = _Fetching;
  const factory ProfileState.fetchFail({required String exception}) = _FetchFail;
  const factory ProfileState.fetchSuccess({required UserModel user}) = _FetchSuccess;
  const factory ProfileState.followSuccess({required UserModel user}) = _FollowSuccess;
  const factory ProfileState.followFail({required String exception}) = _FollowFail;
}
