import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../utils/form_status.dart';
import '../../auth_flow/authentication_cubit.dart';
import '../../auth_repository.dart';
import '../signup_bloc.dart';

part 'signup_form.dart';

class SignupView extends StatelessWidget {
  const SignupView({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute(builder: (_) => const SignupView());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign Up')),
      body: BlocProvider<SignupBloc>(
        create: (context) => SignupBloc(
          authRepository: context.read<AuthRepository>(),
          authenticationCubit: context.read<AuthenticationCubit>(),
        ),
        child: const SignupForm(),
      ),
    );
  }
}
