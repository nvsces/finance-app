import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:finance_app/app/config.dart';
import 'package:finance_app/data/models/auth/auth_invalid_credentials_exception.dart';
import 'package:finance_app/data/models/transaction.dart';

class ApiHandler {
  final Dio dio;

  ApiHandler(this.dio);

  Future<List<Transaction>> getExpenses() async {
    final response = await dio.get(
      '$hostUrl/transaction?start=1680011659000&end=1682872073000&enabled=true',
    );

    final data = response.data['transactions'];
    return (data as List).map((e) => Transaction.fromMap(e)).toList();
  }

  Future<String> login({required String code}) async {
    final response = await dio.post(
      '$hostUrl/login',
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

  Future<bool> uploadFile(Uint8List fileBytes) async {
    try {
      const url = '$uploadHostUrl/upload_file_pdf/';
      final formData = FormData.fromMap(
        {
          'file': MultipartFile.fromBytes(
            fileBytes,
            filename: 'file.pdf',
          ),
        },
      );
      final respons = await dio.post(
        url,
        data: formData,
      );
      return respons.statusCode == 200;
    } catch (e) {
      return false;
    }
  }
}
