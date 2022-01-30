import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../auth_repository.dart';
import '../login_bloc.dart';
import 'login_form.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('login')),
      body: BlocProvider<LoginBloc>(
        create: (context) => LoginBloc(authRepository: context.read<AuthRepository>()),
        child: const LoginForm(),
      ),
    );
  }
}
