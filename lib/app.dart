import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'authentication/auth_flow/authentication_cubit.dart';
import 'authentication/login/view/login_view.dart';
import 'session/navigator/session_navigator.dart';
import 'splash/splash_view.dart';
import 'utils/utils.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: AppConstants.navKey,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      builder: (_, child) {
        return BlocListener<AuthenticationCubit, AuthenticationState>(
          listener: (_, state) {
            state.whenOrNull(
              authenticated: () =>
                  AppConstants.navKey.currentState?.pushAndRemoveUntil(SessionNavigator.route(), (route) => false),
              unauthenticated: () =>
                  AppConstants.navKey.currentState?.pushAndRemoveUntil(LoginView.route(), (route) => false),
            );
          },
          child: child,
        );
      },
      onGenerateRoute: (_) => SplashView.route(),
    );
  }
}
