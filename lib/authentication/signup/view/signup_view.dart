import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../auth_repository.dart';
import '../signup_bloc.dart';
import 'signup_form.dart';

class SignupView extends StatelessWidget {
  const SignupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('login')),
      body: BlocProvider<SignupBloc>(
        create: (context) => SignupBloc(authRepository: context.read<AuthRepository>()),
        child: const SignupForm(),
      ),
    );
  }
}
