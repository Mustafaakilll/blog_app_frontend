import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/di/di.dart';
import '../../../utils/constants.dart';
import '../../../utils/form_status.dart';
import '../../signup/view/signup_view.dart';
import '../bloc/login_bloc.dart';

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
        create: (context) => locator<LoginBloc>(),
        child: const _LoginForm(),
      ),
    );
  }
}
