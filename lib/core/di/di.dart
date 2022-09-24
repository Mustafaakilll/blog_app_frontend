// ignore_for_file: cascade_invocations

import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';

import '../../authentication/auth_flow/authentication_cubit.dart';
import '../../authentication/auth_repository.dart';
import '../../authentication/login/bloc/login_bloc.dart';
import '../../authentication/signup/bloc/signup_bloc.dart';
import '../../session/add_article/bloc/add_article_bloc.dart';
import '../../session/article_repository.dart';
import '../../session/edit_profile/bloc/edit_profile_bloc.dart';
import '../../session/home/bloc/home_bloc.dart';
import '../../session/navigator/bloc/session_navigator_cubit.dart';
import '../../session/profile/bloc/profile_bloc.dart';
import '../../session/user_repository.dart';
import '../../utils/storage_repository.dart';
import '../network/dio_client.dart';

final locator = GetIt.instance;

void init() {
  // EXTERNAL
  final authDio = BaseDioClient.auth().dio;
  final userDio = BaseDioClient.user().dio;
  final articleDio = BaseDioClient.article().dio;
  final cloudinaryDio = BaseDioClient.cloudinary().dio;

  locator.registerLazySingleton<ImagePicker>(() => ImagePicker());

  // REPOSITORY
  locator.registerLazySingleton<AuthRepository>(() => AuthRepository(dio: authDio, storageRepo: locator()));
  locator.registerLazySingleton<StorageRepository>(() => StorageRepository());
  locator.registerLazySingleton<UserRepository>(
    () => UserRepository(userDio: userDio, storageRepo: locator(), cloudinaryDio: cloudinaryDio),
  );
  locator.registerLazySingleton<ArticleRepository>(
    () => ArticleRepository(articleDio: articleDio, storageRepo: locator(), cloudinaryDio: cloudinaryDio),
  );

  // CUBITS
  locator.registerFactory<AuthenticationCubit>(() => AuthenticationCubit(authRepository: locator()));
  locator.registerFactory<SessionNavigatorCubit>(() => SessionNavigatorCubit());

  // BLOCS
  locator.registerFactory<LoginBloc>(() => LoginBloc(authenticationCubit: locator(), authRepository: locator()));
  locator.registerFactory<SignupBloc>(() => SignupBloc(authenticationCubit: locator(), authRepository: locator()));
  locator.registerFactory<AddArticleBloc>(() => AddArticleBloc(
        articleRepo: locator(),
        sessionNavCubit: locator(),
        picker: locator(),
      ));
  locator
      .registerFactory<ProfileBloc>(() => ProfileBloc(storageRepo: locator(), userRepo: locator(), picker: locator()));
  locator.registerFactory<HomeBloc>(() => HomeBloc(articleRepo: locator()));
  locator.registerFactory<EditProfileBloc>(() => EditProfileBloc(
        picker: locator(),
        userRepo: locator(),
      ));
}
