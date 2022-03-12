import 'package:dio/dio.dart';

import '../utils/utils.dart';
import 'profile/model/user_model.dart';

class UserRepository {
  UserRepository({required this.dio, required this.storageRepo});

  final Dio dio;
  final StorageRepository storageRepo;

  Future<UserModel> getUserByUsername(Map currentUser) async {
    try {
      final result = await dio.get('/user/${currentUser["username"]}');
      final user = UserModel.fromJson(result.data['profile']);
      // TODO: Figure it out on backend
      for (final followers in user.followers) if (followers['id'] == currentUser['id']) user.following = true;
      user.isMe = currentUser['id'] == user.id;

      return user;
    } on DioError catch (e) {
      throw Exception(e.response!.data['message']);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<UserModel> followUser(String username) async {
    try {
      final result = await dio.get('/user/$username/follow');
      final user = UserModel.fromJson(result.data['profile']);
      return user;
    } on DioError catch (e) {
      throw Exception(e.response!.data['message']);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<UserModel> unfollowUser(String username) async {
    try {
      final result = await dio.get('/user/$username/unfollow');
      final user = UserModel.fromJson(result.data['profile']);
      return user;
    } on DioError catch (e) {
      throw Exception(e.response!.data['message']);
    } catch (e) {
      throw Exception(e);
    }
  }
}
