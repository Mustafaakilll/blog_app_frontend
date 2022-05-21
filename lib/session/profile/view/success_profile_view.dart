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
        return state.whenOrNull(
          fetchSuccess: (state) {
            return AppBar(
              title: const Text('Profile'),
              actions: [state.isMe! ? _logOutButton(context, state.isMe!) : Container()],
            );
          },
        )!;
      },
    );
  }

  Widget _logOutButton(BuildContext context, bool isMe) {
    return Visibility(
      visible: isMe,
      child: IconButton(
        icon: const Icon(Icons.exit_to_app),
        onPressed: () => context.read<AuthRepository>().logOut(),
      ),
    );
  }

  BlocBuilder<ProfileBloc, ProfileState> _userAvatar() {
    return BlocBuilder<ProfileBloc, ProfileState>(builder: (context, state) {
      return state.whenOrNull(
          fetchSuccess: (user) => CircleAvatar(
                backgroundImage: NetworkImage(user.image),
                radius: 50,
              ))!;
    });
  }

  BlocBuilder<ProfileBloc, ProfileState> _userInfo() {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return state.whenOrNull(
            fetchSuccess: (user) => Column(
                  children: [
                    context.emptySizedHeightBoxLow,
                    Text(user.username),
                    context.emptySizedHeightBoxLow,
                    Text(user.email),
                    context.emptySizedHeightBoxLow,
                    Text('Followers: ${user.followers.length}'),
                    user.isMe!
                        ? Container()
                        : user.following
                            ? TextButton(
                                onPressed: () =>
                                    context.read<ProfileBloc>().add(ProfileEvent.unfollowUser(username: user.username)),
                                child: const Text('Unfollow'))
                            : TextButton(
                                onPressed: () =>
                                    context.read<ProfileBloc>().add(ProfileEvent.followUser(username: user.username)),
                                child: const Text('Follow')),
                  ],
                ))!;
      },
    );
  }
}
