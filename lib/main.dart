import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'authentication/auth_flow/authentication_cubit.dart';
import 'authentication/auth_repository.dart';
import 'authentication/login/view/login_view.dart';
import 'home/home_view.dart';
import 'splash/splash_view.dart';
import 'utils/constants.dart';
import 'utils/storage_repository.dart';

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
        RepositoryProvider(create: (context) => AuthRepository(storageRepo: context.read<StorageRepository>())),
      ],
      child: BlocProvider(
        create: (context) => AuthenticationCubit(authRepository: context.read<AuthRepository>()),
        child: MaterialApp(
          navigatorKey: AppConstants.navKey,
          title: 'Flutter Demo',
          theme: ThemeData.dark(),
          builder: (context, child) {
            return BlocListener<AuthenticationCubit, AuthenticationState>(
              listener: (_, state) {
                if (state is Authenticated)
                  AppConstants.navKey.currentState?.pushAndRemoveUntil(HomeView.route(), (route) => false);
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
