import 'package:dio/dio.dart';

import '../utils/storage_repository.dart';
import 'login/model/request_login_model.dart';
import 'login/model/response_login_model.dart';
import 'signup/model/request_signup_model.dart';

class AuthRepository {
  AuthRepository({required this.dio, required this.storageRepo});

  final Dio dio;
  final StorageRepository storageRepo;

  Future<void> login(RequestLoginModel credentials) async {
    try {
      final request = await dio.post('/login', data: credentials.toJson());
      final response = ResponseLoginModel.fromJson(request.data);
      final token = response.token;
      response.user.copyWith(password: credentials.password);
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
      final request = await dio.post('/register', data: credentials.toJson());
      final response = ResponseLoginModel.fromJson(request.data);
      final token = response.token;
      response.user.copyWith(password: credentials.password);
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
