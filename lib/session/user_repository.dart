import 'dart:developer';

import 'package:dio/dio.dart';

import '../utils/utils.dart';
import 'edit_profile/model/edit_profile_model.dart';
import 'profile/model/user_model.dart';

class UserRepository {
  UserRepository({required this.userDio, required this.cloudinaryDio, required this.storageRepo});

  final Dio userDio;
  final Dio cloudinaryDio;
  final StorageRepository storageRepo;

  Future<UserModel> getUserByUsername(Map currentUser) async {
    try {
      final result = await userDio.get('/${currentUser["username"]}');
      final isMe = result.data['profile']['isMe'] = currentUser['id'] == result.data['profile']['id'];
      final demo = <String, dynamic>{...result.data['profile'], 'isMe': isMe};
      final user = UserModel.fromJson(demo);
      // TODO: Figure it out on backend
      for (final followers in user.followers) {
        if (followers['id'] == currentUser['id']) user.copyWith(following: true);
      }
      return user;
    } on DioError catch (e) {
      throw Exception(e.response!.data['message']);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<UserModel> followUser(String username) async {
    try {
      final result = await userDio.get('/$username/follow');
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
      final result = await userDio.get('/$username/unfollow');
      final user = UserModel.fromJson(result.data['profile']);
      return user;
    } on DioError catch (e) {
      throw Exception(e.response!.data['message']);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<String?>? uploadUserImageToCloud(String filePath, String resourceType) async {
    try {
      final rawData = <String, dynamic>{
        'file': await MultipartFile.fromFile(filePath),
        'resource_type': resourceType,
        'upload_preset': 'ml_default'
      };
      final formData = FormData.fromMap(rawData);
      final response = await cloudinaryDio.post('/$resourceType/upload', data: formData);
      return response.data['secure_url'] ?? response.data['url'];
    } on DioError catch (e) {
      log(e.response!.data['message']);
      throw Exception(e.response!.data['message']);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<void> saveUser(EditProfileModel data) async {
    try {
      final response = await userDio.put('', data: data.toJson());
      log('Save user response: $response');
    } on DioError catch (err) {
      log(err.toString());
      throw Exception(err.toString());
    } catch (e) {
      log(e.toString());
      throw Exception(e.toString());
    }
  }
}
