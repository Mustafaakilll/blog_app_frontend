import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../utils/storage_repository.dart';
import 'login/model/login_model.dart';
import 'signup/model/signup_model.dart';

class AuthRepository {
  AuthRepository({required this.storageRepo});

  final Dio _dio = Dio();
  final authApi = dotenv.get('AUTH_ENDPOINT');
  final StorageRepository storageRepo;

  Future<void> login(LoginModel credentials) async {
    try {
      final request = await _dio.post('$authApi/login', data: credentials.toJson());
      final token = request.data['token'];
      request.data['user']['password'] = credentials.password;
      final user = request.data['user'];

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

  Future<void> signUp(SignupModel credentials) async {
    try {
      final request = await _dio.post('$authApi/register', data: credentials.toJson());
      final token = request.data['token'];
      request.data['user']['password'] = credentials.password;
      final user = request.data['user'];

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
        final credentials = LoginModel(email: user['email'], password: user['password']);
        await login(credentials);
      } catch (e) {
        throw Exception(e);
      }
    } else {
      throw Exception('User not found');
    }
  }

  Future<void> logOut() async {
    try {
      await storageRepo.clearData();
    } catch (e) {
      throw Exception(e);
    }
  }
}
