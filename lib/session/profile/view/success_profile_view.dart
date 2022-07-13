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
        _editButton(),
      ],
    );
  }

  Widget _appBar() {
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
        onPressed: () => locator<AuthRepository>().logOut(),
      ),
    );
  }

  Widget _userAvatar() {
    return BlocBuilder<ProfileBloc, ProfileState>(builder: (context, state) {
      return state.whenOrNull(
          fetchSuccess: (user) => CircleAvatar(
                backgroundImage: NetworkImage(user.image),
                radius: 50,
              ))!;
    });
  }

  Widget _userInfo() {
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
              Text(user.bio),
              // Visibility(visible: (user.bio.length < 0), child: Text(user.bio)),
              context.emptySizedHeightBoxLow,
              Text('Followers: ${user.followers.length}'),
              context.emptySizedHeightBoxLow,
              Visibility(visible: !(user.isMe!), child: _followButton(user.following, user.username)),
            ],
          ),
        )!;
      },
    );
  }

  Widget _followButton(bool following, String username) {
    return following
        ? TextButton(
            onPressed: () => locator<ProfileBloc>().add(ProfileEvent.unfollowUser(username: username)),
            child: const Text('Unfollow'),
          )
        : TextButton(
            onPressed: () => locator<ProfileBloc>().add(ProfileEvent.followUser(username: username)),
            child: const Text('Follow'),
          );
  }

  Widget _editButton() {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return Visibility(
          visible: state.whenOrNull(fetchSuccess: (user) => user.isMe!)!,
          child: ElevatedButton(
            onPressed: () {
              AppConstants.navKey.currentState
                  ?.push(EditProfileView.route(context.read<ProfileBloc>().user))
                  .whenComplete(() {
                context.read<ProfileBloc>().add(const ProfileEvent.fetch());
              });
            },
            child: const Text('Edit'),
          ),
        );
      },
    );
  }
}
