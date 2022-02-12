import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../utils/storage_repository.dart';
import 'model/user_model.dart';

class UserRepository {
  UserRepository(this._storageRepository) : _dio = Dio();

  final Dio _dio;
  final StorageRepository _storageRepository;
  final String _baseUrl = dotenv.get('BASE_URL');

  Future<UserModel> getUserByUsername(String username) async {
    try {
      final token = await _storageRepository.getData('token');
      final result = await _dio.get('$_baseUrl/user/$username',
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
