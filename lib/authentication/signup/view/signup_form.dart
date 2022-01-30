import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../utils/form_status.dart';
import '../signup_bloc.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupBloc, SignupState>(
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
            _UsernameInput(),
            _PasswordInput(),
            _LoginButton(),
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
    return BlocBuilder<SignupBloc, SignupState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return TextField(
          onChanged: (value) => context.read<SignupBloc>().add(SignupEmailChanged(email: value)),
          decoration: const InputDecoration(labelText: 'email'),
        );
      },
    );
  }
}

class _UsernameInput extends StatelessWidget {
  const _UsernameInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupBloc, SignupState>(
      buildWhen: (previous, current) => previous.username != current.username,
      builder: (context, state) {
        return TextField(
          onChanged: (value) => context.read<SignupBloc>().add(SignupUsernameChanged(username: value)),
          decoration: const InputDecoration(labelText: 'username'),
        );
      },
    );
  }
}

class _PasswordInput extends StatelessWidget {
  const _PasswordInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupBloc, SignupState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return TextField(
          onChanged: (value) => context.read<SignupBloc>().add(SignupPasswordChanged(password: value)),
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
    return BlocBuilder<SignupBloc, SignupState>(
      buildWhen: (previous, current) => previous.formStatus != current.formStatus,
      builder: (context, state) {
        return state.formStatus == const FormSubmitting()
            ? const CircularProgressIndicator()
            : ElevatedButton(
                onPressed: () => context.read<SignupBloc>().add(const SignupFormSubmitted()),
                child: const Text('Submit'),
              );
      },
    );
  }
}
