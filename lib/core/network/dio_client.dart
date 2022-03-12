import 'package:dio/dio.dart' hide LogInterceptor;
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'interceptors/auth_interceptor.dart';
import 'interceptors/cache_interceptor.dart';
import 'interceptors/log_interceptor.dart';

class DioClient {
  DioClient() {
    dio.options = BaseOptions(baseUrl: dotenv.get('BASE_URL'));
    _dio.interceptors
      ..add(LogInterceptor())
      ..add(AuthInterceptor())
      ..add(CacheInterceptor());
  }

  final Dio _dio = Dio();

  Dio get dio => _dio;
}
