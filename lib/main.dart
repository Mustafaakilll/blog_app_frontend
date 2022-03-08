import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'authentication/auth_flow/authentication_cubit.dart';
import 'authentication/auth_repository.dart';
import 'authentication/login/view/login_view.dart';
import 'session/article_repository.dart';
import 'session/navigator/session_navigator.dart';
import 'session/navigator/session_navigator_cubit.dart';
import 'session/user_repository.dart';
import 'splash/splash_view.dart';
import 'utils/utils.dart';

Future<void> main() async {
  await dotenv.load();
  await Hive.initFlutter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => StorageRepository()),
        RepositoryProvider(create: (context) => ArticleRepository(storageRepo: context.read<StorageRepository>())),
        RepositoryProvider(create: (context) => UserRepository(context.read<StorageRepository>())),
        RepositoryProvider(create: (context) => AuthRepository(storageRepo: context.read<StorageRepository>())),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AuthenticationCubit>(
              create: (context) => AuthenticationCubit(authRepository: context.read<AuthRepository>())),
          BlocProvider<SessionNavigatorCubit>(create: (context) => SessionNavigatorCubit()),
        ],
        child: MaterialApp(
          navigatorKey: AppConstants.navKey,
          title: 'Flutter Demo',
          theme: ThemeData.dark(),
          builder: (_, child) {
            return BlocListener<AuthenticationCubit, AuthenticationState>(
              listener: (_, state) {
                if (state is Authenticated)
                  AppConstants.navKey.currentState?.pushAndRemoveUntil(SessionNavigator.route(), (route) => false);
                if (state is Unauthenticated)
                  AppConstants.navKey.currentState?.pushAndRemoveUntil(LoginView.route(), (route) => false);
              },
              child: child,
            );
          },
          onGenerateRoute: (_) => SplashView.route(),
        ),
      ),
    );
  }
}
