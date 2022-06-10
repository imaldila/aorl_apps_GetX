import 'package:dio/dio.dart';

import 'logger_interceptor.dart';

class NetworkDio {
  static Dio createDio() {
    const String baseUrl = 'https://reqres.in/api/';
    final options = BaseOptions(
      baseUrl: baseUrl,
      responseType: ResponseType.plain,
      connectTimeout: 60 * 1000, // 60 seconds
      receiveTimeout: 60 * 1000, // 60 seconds
    );
    Dio dio = Dio(options);
    dio.interceptors.addAll([
      LoggerInterceptor(),
    ]);
    return dio;
  }
}
