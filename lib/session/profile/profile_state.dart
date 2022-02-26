part of 'profile_bloc.dart';

abstract class ProfileState extends Equatable {
  const ProfileState();

  @override
  List<Object> get props => [];
}

class UserFetching extends ProfileState {
  const UserFetching();

  @override
  List<Object> get props => [];
}

class UserFetchedSuccessful extends ProfileState {
  const UserFetchedSuccessful({required this.user});

  final UserModel user;

  @override
  List<Object> get props => [user];
}

class UserFetchedFailed extends ProfileState {
  const UserFetchedFailed({required this.error});

  final String error;

  @override
  List<Object> get props => [error];
}

class UserFollowedSuccessful extends ProfileState {
  const UserFollowedSuccessful({required this.user});

  final UserModel user;

  @override
  List<Object> get props => [user];
}

class UserFollowedFailure extends ProfileState {
  const UserFollowedFailure({required this.error});

  final String error;

  @override
  List<Object> get props => [error];
}
