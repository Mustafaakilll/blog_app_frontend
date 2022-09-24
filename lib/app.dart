import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'authentication/auth_flow/authentication_cubit.dart';
import 'authentication/login/view/login_view.dart';
import 'session/navigator/view/session_navigator.dart';
import 'utils/utils.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: AppConstants.navKey,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: darkColorScheme,
        useMaterial3: true,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(selectedItemColor: Color(0xff66dbb3)),
      ),
      builder: (_, child) {
        return BlocListener<AuthenticationCubit, AuthenticationState>(
          listener: (context, state) {
            state.mapOrNull(
              authenticated: (value) => AppConstants.navKey.currentState!.pushAndRemoveUntil(
                SessionNavigator.route(),
                (route) => false,
              ),
              unauthenticated: (value) => const LoginView(),
            )!;
          },
          child: child,
        );
      },
      onGenerateRoute: (_) => LoginView.route(),
    );
  }
}
