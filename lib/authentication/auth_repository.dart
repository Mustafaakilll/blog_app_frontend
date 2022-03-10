import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../utils/storage_repository.dart';
import 'login/model/request_login_model.dart';
import 'login/model/response_login_model.dart';
import 'signup/model/request_signup_model.dart';

class AuthRepository {
  AuthRepository({required this.storageRepo});

  final Dio _dio = Dio();
  final authApi = dotenv.get('AUTH_ENDPOINT');
  final StorageRepository storageRepo;

  Future<void> login(RequestLoginModel credentials) async {
    try {
      final _request = await _dio.post('$authApi/login', data: credentials.toJson());
      final response = ResponseLoginModel.fromJson(_request.data);
      final token = response.token;
      response.user.password = credentials.password;
      final user = response.user.toJson();

      await storageRepo.setData<String>('token', token);
      await storageRepo.setData<Map>('user', user);
    } on DioError catch (e) {
      final errorMessage = e.response?.data['message'].runtimeType == List
          ? e.response?.data['message'].first
          : e.response?.data['message'];
      throw Exception(errorMessage);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> signUp(RequestSignupModel credentials) async {
    try {
      final _request = await _dio.post('$authApi/register', data: credentials.toJson());
      final response = ResponseLoginModel.fromJson(_request.data);
      final token = response.token;
      response.user.password = credentials.password;
      final user = response.user.toJson();

      await storageRepo.setData<String>('token', token);
      await storageRepo.setData<Map>('user', user);
    } on DioError catch (e) {
      final errorMessage = e.response?.data['message'].runtimeType == List
          ? e.response?.data['message'].first
          : e.response?.data['message'];
      throw Exception(errorMessage);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> attemptAutoLogin() async {
    final user = await storageRepo.getData<Map>('user');
    if (user.isNotEmpty) {
      try {
        final credentials = RequestLoginModel(email: user['email'], password: user['password']);
        await login(credentials);
      } catch (e) {
        throw Exception(e);
      }
    } else {
      throw Exception('User not found');
    }
  }

  void logOut() {
    try {
      storageRepo.clearData();
    } catch (e) {
      throw Exception(e);
    }
  }
}
