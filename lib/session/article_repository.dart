import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../utils/utils.dart';
import 'add_article/model/add_article_model.dart';

class ArticleRepository {
  ArticleRepository({required this.storageRepo}) : _dio = Dio();

  final Dio _dio;
  final StorageRepository storageRepo;

  final String _cloudinaryUrl = dotenv.get('CLOUDINARY_URL');
  final String _cloudName = dotenv.get('CLOUD_NAME');
  final String _articleEndpoint = dotenv.get('ARTICLE_ENDPOINT');

  Future<String> uploadImageToCloud(String filePath, String resourceType) async {
    try {
      final _rawData = <String, dynamic>{
        'file': await MultipartFile.fromFile(filePath),
        'resource_type': resourceType,
        'upload_preset': 'ml_default'
      };
      final _formData = FormData.fromMap(_rawData);
      final response = await _dio.post('$_cloudinaryUrl$_cloudName/$resourceType/upload', data: _formData);
      return response.data['secure_url'] ?? response.data['url'];
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  void addArticle(AddArticleModel data) async {
    try {
      final _token = await storageRepo.getData('token');
      final response = await _dio.post(_articleEndpoint,
          data: data.toJson(), options: Options(headers: {'Authorization': 'Token ${await _token}'}));
      debugPrint('Article Repo add article response: $response');
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
