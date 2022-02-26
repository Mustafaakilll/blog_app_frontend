import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../authentication/auth_repository.dart';
import '../../../utils/storage_repository.dart';
import '../../../utils/widget_extension.dart';
import '../../user_repository.dart';
import '../profile_bloc.dart';

part 'error_profile_view.dart';
part 'success_profile_view.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileBloc>(
      create: (context) => ProfileBloc(
        context.read<UserRepository>(),
        context.read<StorageRepository>(),
      )..add(FetchUser()),
      child: BlocConsumer<ProfileBloc, ProfileState>(
        listener: (context, state) {
          if (state is UserFollowedFailure) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.error)));
          }
        },
        builder: (context, state) {
          if (state is UserFetchedSuccessful) {
            return const _SuccessBody();
          } else if (state is UserFetchedFailed) {
            return _FailureBody(error: state.error.toString());
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
