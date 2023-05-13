import 'package:dio/dio.dart';
import 'package:finance_app/data/models/auth/auth_invalid_credentials_exception.dart';

class ApiHandler {
  final Dio dio;

  ApiHandler(this.dio);

  Future<String> login({required String code}) async {
    final response = await dio.post(
      'http://178.250.157.195:6200/login',
      data: {"code": code},
    );
    final token = response.data['token'];
    if (token != null) {
      return token;
    }
    if (response.data['error'] != null) {
      throw const AuthInvalidCredentialsException();
    }

    throw Exception();
  }
}
