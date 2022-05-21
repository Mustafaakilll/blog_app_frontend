part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.fetch() = _Fetch;
  const factory ProfileEvent.followUser({required String username}) = _FollowUser;
  const factory ProfileEvent.unfollowUser({required String username}) = _UnfollowUser;
}
