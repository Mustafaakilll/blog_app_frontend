import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class LogInterceptor extends Interceptor {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    debugPrint('*** DioError ***:');
    debugPrint('uri: ${err.requestOptions.uri}');
    debugPrint('$err');
    if (err.response != null) {
      debugPrint('ERR RESPONSE: ${err.response}');
    }
    handler.next(err);
  }
}
