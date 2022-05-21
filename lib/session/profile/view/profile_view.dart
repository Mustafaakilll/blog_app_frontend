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
      )..add(const ProfileEvent.fetch()),
      child: BlocConsumer<ProfileBloc, ProfileState>(
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
            fetchSuccess: (user) => const _SuccessBody(),
            fetchFail: (exception) => _FailureBody(exception: exception),
          )!;
        },
      ),
    );
  }
}
