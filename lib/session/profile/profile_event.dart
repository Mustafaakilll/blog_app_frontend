part of 'profile_bloc.dart';

abstract class ProfileEvent extends Equatable {
  const ProfileEvent();
}

class FetchUser extends ProfileEvent {
  @override
  List<Object> get props => [];
}

class FollowUser extends ProfileEvent {
  const FollowUser(this.username);

  final String username;

  @override
  List<Object> get props => [username];
}

class UnfollowUser extends ProfileEvent {
  const UnfollowUser(this.username);

  final String username;

  @override
  List<Object> get props => [username];
}
