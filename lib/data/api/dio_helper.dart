import 'package:dio/dio.dart';
import 'package:flutter_pretty_dio_logger/flutter_pretty_dio_logger.dart';

import 'abstract_dio_auth_actions.dart';

class DioHelper {
  final Dio dio;
  AbstractDioAuthActions? dioAuthActions;

  DioHelper({
    this.dioAuthActions,
  }) : dio = Dio(
          BaseOptions(
            connectTimeout: const Duration(seconds: 10),
            receiveTimeout: const Duration(seconds: 10),
          ),
        ) {
    _initDio();
  }

  void _initDio() {
    const Map<String, String> headers = {'Content-Type': 'application/json'};
    dio.options.headers = headers;
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (RequestOptions options, handler) {
          final signedOptions = _requestInterceptor(options);
          handler.next(signedOptions);
        },
        onError: (DioError error, handler) async {
          if (error.response?.statusCode == 401 ||
              error.response?.statusCode == 403) {
            dioAuthActions?.onUnAuthedError();
          }
          handler.reject(error);
        },
      ),
    );

    // if (kDebugMode) {
    dio.interceptors.add(logger);
    // }
  }

  static final logger = PrettyDioLogger(
    requestHeader: true,
    queryParameters: true,
    requestBody: true,
    responseHeader: true,
    responseBody: true,
    error: true,
    showProcessingTime: false,
    //set to true to see https requests logs
    canShowLog: false,
  );

  RequestOptions _requestInterceptor(RequestOptions options) {
    final token = dioAuthActions?.token;
    if (token != null) {
      options.headers
          .addAll(<String, String>{'Authorization': 'Bearer $token'});
    } else {
      options.headers.remove('Authorization');
    }
    return options;
  }
}
