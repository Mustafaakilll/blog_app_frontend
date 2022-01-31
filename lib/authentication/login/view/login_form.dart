import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../utils/constants.dart';
import '../../../utils/form_status.dart';
import '../../signup/view/signup_view.dart';
import '../login_bloc.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        final formStatus = state.formStatus;
        if (formStatus is SubmissionFailure) {
          ScaffoldMessenger.of(context)
            ..clearSnackBars()
            ..showSnackBar(
              SnackBar(content: Text(formStatus.exception)),
            );
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            _EmailInput(),
            _PasswordInput(),
            _LoginButton(),
            _SignupButton(),
          ],
        ),
      ),
    );
  }
}

class _EmailInput extends StatelessWidget {
  const _EmailInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return TextField(
          onChanged: (value) => context.read<LoginBloc>().add(EmailChanged(email: value)),
          decoration: const InputDecoration(labelText: 'email'),
        );
      },
    );
  }
}

class _PasswordInput extends StatelessWidget {
  const _PasswordInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return TextField(
          onChanged: (value) => context.read<LoginBloc>().add(PasswordChanged(password: value)),
          decoration: const InputDecoration(labelText: 'password'),
          obscureText: true,
        );
      },
    );
  }
}

class _LoginButton extends StatelessWidget {
  const _LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.formStatus != current.formStatus,
      builder: (context, state) {
        return state.formStatus == const FormSubmitting()
            ? const CircularProgressIndicator()
            : ElevatedButton(
                onPressed: () => context.read<LoginBloc>().add(const LoginFormSubmitted()),
                child: const Text('Submit'),
              );
      },
    );
  }
}

class _SignupButton extends StatelessWidget {
  const _SignupButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => AppConstants.navKey.currentState?.push(SignupView.route()),
      child: const Text('Dont have an account? Sign up now'),
    );
  }
}
