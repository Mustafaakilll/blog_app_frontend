import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../utils/utils.dart';
import 'profile/model/user_model.dart';

class UserRepository {
  UserRepository(this._storageRepository) : _dio = Dio();

  final Dio _dio;
  final StorageRepository _storageRepository;
  final String _userEndpoint = dotenv.get('USER_ENDPOINT');

  Future<UserModel> getUserByUsername(Map currentUser) async {
    try {
      final _token = await _storageRepository.getData('token');
      final result = await _dio.get('$_userEndpoint/${currentUser["username"]}',
          options: Options(headers: {'Authorization': 'Token ${await _token}'}));
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
      final token = await _storageRepository.getData('token');
      final result = await _dio.get('$_userEndpoint/$username/follow',
          options: Options(headers: {'Authorization': 'Token ${await token}'}));
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
      final token = await _storageRepository.getData('token');
      final result = await _dio.get('$_userEndpoint/$username/unfollow',
          options: Options(headers: {'Authorization': 'Token ${await token}'}));
      final user = UserModel.fromJson(result.data['profile']);
      return user;
    } on DioError catch (e) {
      throw Exception(e.response!.data['message']);
    } catch (e) {
      throw Exception(e);
    }
  }
}
