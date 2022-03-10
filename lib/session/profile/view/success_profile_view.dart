part of 'profile_view.dart';

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
        state as UserFetchedSuccessful;
        return AppBar(
          title: const Text('Profile'),
          actions: [
            state.user.isMe! ? _logOutButton(context) : Container(),
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
        state as UserFetchedSuccessful;
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
        state as UserFetchedSuccessful;
        return Column(
          children: [
            context.emptySizedHeightBoxLow,
            Text(state.user.username),
            context.emptySizedHeightBoxLow,
            Text(state.user.email),
            context.emptySizedHeightBoxLow,
            Text('Followers: ${state.user.followers.length}'),
            state.user.isMe!
                ? Container()
                : state.user.following
                    ? TextButton(
                        onPressed: () => context.read<ProfileBloc>().add(UnfollowUser(state.user.username)),
                        child: const Text('Unfollow'))
                    : TextButton(
                        onPressed: () => context.read<ProfileBloc>().add(FollowUser(state.user.username)),
                        child: const Text('Follow')),
          ],
        );
      },
    );
  }
}
