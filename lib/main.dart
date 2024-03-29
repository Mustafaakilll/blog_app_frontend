import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'app.dart';
import 'authentication/auth_flow/authentication_cubit.dart';
import 'authentication/auth_repository.dart';
import 'authentication/login/bloc/login_bloc.dart';
import 'authentication/signup/bloc/signup_bloc.dart';
import 'core/bloc/bloc_observer.dart';
import 'core/di/di.dart';
import 'session/add_article/bloc/add_article_bloc.dart';
import 'session/article_repository.dart';
import 'session/home/bloc/home_bloc.dart';
import 'session/navigator/bloc/session_navigator_cubit.dart';
import 'session/profile/bloc/profile_bloc.dart';
import 'session/user_repository.dart';
import 'utils/utils.dart';

Future<void> main() async {
  ErrorWidget.builder = (details) => Center(child: Text(details.exception.toString()));
  await Hive.initFlutter();
  init();
  Bloc.observer = MyBlocObserver();
  runApp(const App());
  // BlocOverrides.runZoned(() => runApp(const App()), blocObserver: MyBlocObserver());
  // TODO: ADD ANY ROUTER PACKAGE
  // TODO: MAKE WIDGET FOR LOADING AND BUTTON PROCESS
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<StorageRepository>(create: (_) => locator<StorageRepository>()),
        RepositoryProvider<ArticleRepository>(create: (_) => locator<ArticleRepository>()),
        RepositoryProvider<UserRepository>(create: (_) => locator<UserRepository>()),
        RepositoryProvider<AuthRepository>(create: (_) => locator<AuthRepository>()),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AuthenticationCubit>(create: (_) => locator<AuthenticationCubit>()),
          BlocProvider<SessionNavigatorCubit>(create: (_) => locator<SessionNavigatorCubit>()),
          BlocProvider<LoginBloc>(create: (_) => locator<LoginBloc>()),
          BlocProvider<SignupBloc>(create: (_) => locator<SignupBloc>()),
          BlocProvider<AddArticleBloc>(create: (_) => locator<AddArticleBloc>()),
          BlocProvider<ProfileBloc>(create: (_) => locator<ProfileBloc>()),
          BlocProvider<HomeBloc>(create: (_) => locator<HomeBloc>()),
        ],
        child: const MyApp(),
      ),
    );
  }
}
