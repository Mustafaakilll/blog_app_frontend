import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../utils/constants.dart';
import '../../../utils/form_status.dart';
import '../../auth_flow/authentication_cubit.dart';
import '../../auth_repository.dart';
import '../../signup/view/signup_view.dart';
import '../login_bloc.dart';

part 'login_form.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute(builder: (_) => const LoginView());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Log In')),
      body: BlocProvider<LoginBloc>(
        create: (context) => LoginBloc(
          authRepository: context.read<AuthRepository>(),
          authenticationCubit: context.read<AuthenticationCubit>(),
        ),
        child: const _LoginForm(),
      ),
    );
  }
}
