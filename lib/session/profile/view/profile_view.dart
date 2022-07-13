import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../authentication/auth_repository.dart';
import '../../../core/di/di.dart';
import '../../../utils/constants.dart';
import '../../../utils/widget_extension.dart';
import '../../edit_profile/view/edit_profile_view.dart';
import '../bloc/profile_bloc.dart';

part 'error_profile_view.dart';
part 'success_profile_view.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute(builder: (_) => const ProfileView());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileBloc>(
      create: (context) => locator<ProfileBloc>()..add(const ProfileEvent.fetch()),
      child: const _ProfilePage(),
    );
  }
}

class _ProfilePage extends StatelessWidget {
  const _ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (context, state) {
        state.whenOrNull(
          followFail: (exception) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(exception)));
          },
          fetchFail: (exception) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(exception)));
          },
        );
      },
      builder: (context, state) {
        return state.whenOrNull(
          fetching: () => const Center(child: CircularProgressIndicator()),
          fetchSuccess: (user) => const _SuccessBody(),
          fetchFail: (exception) => _FailureBody(exception: exception),
        )!;
      },
    );
  }
}
