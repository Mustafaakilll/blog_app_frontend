import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../utils/utils.dart';
import 'add_article/model/add_article_model.dart';
import 'home/model/article_response_model.dart';

class ArticleRepository {
  ArticleRepository({required this.articleDio, required this.cloudinaryDio, required this.storageRepo});

  final Dio articleDio;
  final Dio cloudinaryDio;
  final StorageRepository storageRepo;

  Future<List<ArticleResponseModel>> getArticles() async {
    final response = await articleDio.get('');
    final article =
        (response.data['articles'] as List<dynamic>).map((article) => ArticleResponseModel.fromJson(article)).toList();
    return article;
  }

  Future<String> uploadArticleCoverImageToCloud(String filePath, String resourceType) async {
    try {
      final rawData = <String, dynamic>{
        'file': await MultipartFile.fromFile(filePath),
        'resource_type': resourceType,
        'upload_preset': 'ml_default'
      };
      final formData = FormData.fromMap(rawData);
      final response = await cloudinaryDio.post('/$resourceType/upload', data: formData);
      return response.data['secure_url'] ?? response.data['url'];
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<void> addArticle(AddArticleModel data) async {
    try {
      final response = await articleDio.post('', data: data.toJson());
      debugPrint('Article Repo add article response: $response');
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
