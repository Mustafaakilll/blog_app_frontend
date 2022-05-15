import 'package:dio/dio.dart' hide LogInterceptor;
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'interceptors/auth_interceptor.dart';

class BaseDioClient {
  BaseDioClient.auth() {
    _dio.options.baseUrl = dotenv.get('AUTH_ENDPOINT');
  }

  BaseDioClient.user() {
    _dio.options.baseUrl = dotenv.get('USER_ENDPOINT');
  }

  BaseDioClient.article() {
    _dio.options.baseUrl = dotenv.get('ARTICLE_ENDPOINT');
  }

  BaseDioClient.cloudinary() {
    final cloudinaryUrl = dotenv.get('CLOUDINARY_URL');
    final cloudName = dotenv.get('CLOUD_NAME');
    _dio.options.baseUrl = '$cloudinaryUrl$cloudName';
  }

  final Dio _dio = Dio();

  Dio get dio => _dio..interceptors.add(AuthInterceptor());
}
