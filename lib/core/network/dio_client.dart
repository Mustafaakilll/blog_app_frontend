import 'package:dio/dio.dart' hide LogInterceptor;

import '../env/env.dart';
import 'interceptors/auth_interceptor.dart';

class BaseDioClient {
  BaseDioClient.auth() {
    _dio.options.baseUrl = Env.authEndpoint;
  }

  BaseDioClient.user() {
    _dio.interceptors.add(AuthInterceptor());
    _dio.options.baseUrl = Env.userEndpoint;
  }

  BaseDioClient.article() {
    _dio.interceptors.add(AuthInterceptor());
    _dio.options.baseUrl = Env.articleEndpoint;
  }

  BaseDioClient.cloudinary() {
    _dio.interceptors.add(AuthInterceptor());
    final cloudinaryUrl = Env.cloudinaryUrl;
    final cloudName = Env.cloudName;
    _dio.options.baseUrl = '$cloudinaryUrl$cloudName';
  }

  final Dio _dio = Dio();

  Dio get dio => _dio;
}
