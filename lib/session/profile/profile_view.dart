import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../authentication/auth_repository.dart';
import '../../utils/storage_repository.dart';
import '../../utils/widget_extension.dart';
import '../user_repository.dart';
import 'profile_bloc.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileBloc>(
      create: (context) =>
          ProfileBloc(context.read<UserRepository>(), context.read<StorageRepository>())..add(FetchUser()),
      child: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          if (state is UserFetchedSuccessful) {
            return const _SuccessBody();
          } else if (state is UserFetchedFailed) {
            return Center(
              child: Text(state.error.toString()),
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

class _SuccessBody extends StatelessWidget {
  const _SuccessBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _appBar(),
        context.emptySizedHeightBoxHigh,
        _userAvatar(),
        _userInfo(),
      ],
    );
  }

  BlocBuilder<ProfileBloc, ProfileState> _appBar() {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return AppBar(
          title: const Text('Profile'),
          actions: [
            // TODO: Look here for logout just real user
            _logOutButton(context),
          ],
        );
      },
    );
  }

  IconButton _logOutButton(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.exit_to_app),
      onPressed: () => context.read<AuthRepository>().logOut(),
    );
  }

  BlocBuilder<ProfileBloc, ProfileState> _userAvatar() {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        state = state as UserFetchedSuccessful;
        return CircleAvatar(
          backgroundImage: NetworkImage(state.user.image),
          radius: 50,
        );
      },
    );
  }

  BlocBuilder<ProfileBloc, ProfileState> _userInfo() {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        state = state as UserFetchedSuccessful;
        return Column(
          children: [
            context.emptySizedHeightBoxLow,
            Text('${state.user.username}'),
            context.emptySizedHeightBoxLow,
            Text('${state.user.email}'),
            context.emptySizedHeightBoxLow,
            Text('${state.user.followers.length}'),
            state.user.following
                ? TextButton(onPressed: () {}, child: const Text('Unfollow'))
                : TextButton(onPressed: () {}, child: const Text('Follow')),
          ],
        );
      },
    );
  }
}
