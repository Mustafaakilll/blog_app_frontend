import 'package:dio/dio.dart';

import '../../../utils/utils.dart';

class AuthInterceptor extends Interceptor {
  final _storageRepo = StorageRepository();

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers['Authorization'] = 'Token ${await _storageRepo.getData<String>('token')}';
    super.onRequest(options, handler);
  }
}
