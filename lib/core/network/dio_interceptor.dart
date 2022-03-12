import 'package:dio/dio.dart';

import '../../utils/utils.dart';

class DioInterceptor extends Interceptor {
  final _storageRepo = StorageRepository();

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers['Authorization'] = 'Token ${await _storageRepo.getData<String>('token')}';
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    super.onError(err, handler);
  }
}
