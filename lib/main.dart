import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'app.dart';
import 'authentication/auth_flow/authentication_cubit.dart';
import 'authentication/auth_repository.dart';
import 'core/network/dio_client.dart';
import 'session/article_repository.dart';
import 'session/navigator/session_navigator_cubit.dart';
import 'session/user_repository.dart';
import 'utils/utils.dart';

Future<void> main() async {
  await dotenv.load();
  await Hive.initFlutter();
  runApp(App());
  // TODO: Add GetIT for Dependency Injection
  // TODO: ADD FREEZED FOR MDOEL AND BLOC
}

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  final _authDio = BaseDioClient.auth().dio;
  final _userDio = BaseDioClient.user().dio;
  final _articleDio = BaseDioClient.article().dio;
  final _cloudinaryDio = BaseDioClient.cloudinary().dio;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => StorageRepository()),
        RepositoryProvider(
          create: (context) => ArticleRepository(
            storageRepo: context.read<StorageRepository>(),
            cloudinaryDio: _cloudinaryDio,
            articleDio: _articleDio,
          ),
        ),
        RepositoryProvider(
            create: (context) => UserRepository(storageRepo: context.read<StorageRepository>(), dio: _userDio)),
        RepositoryProvider(
            create: (context) => AuthRepository(storageRepo: context.read<StorageRepository>(), dio: _authDio)),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AuthenticationCubit>(
              create: (context) => AuthenticationCubit(authRepository: context.read<AuthRepository>())),
          BlocProvider<SessionNavigatorCubit>(create: (context) => SessionNavigatorCubit()),
        ],
        child: const MyApp(),
      ),
    );
  }
}
