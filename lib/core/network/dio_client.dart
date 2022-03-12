import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'dio_interceptor.dart';

class DioClient {
  DioClient() {
    dio.options = BaseOptions(baseUrl: dotenv.get('BASE_URL'));
    _dio.interceptors.add(DioInterceptor());
  }

  final Dio _dio = Dio();

  Dio get dio => _dio;
}
