import 'package:dio/dio.dart';
import 'package:finance_app/app/config.dart';
import 'package:finance_app/data/models/auth/auth_invalid_credentials_exception.dart';
import 'package:finance_app/data/models/transaction.dart';

import 'package:finance_app/domain/entity/bank_enum.dart';
import 'package:flutter/foundation.dart';

class ApiHandler {
  final Dio dio;

  ApiHandler(this.dio);

  Future<List<Transaction>> getExpenses() async {
    final response = await dio.get<Map<String, dynamic>>(
      '$hostUrl/transaction?start=0&end=16828720730000&enabled=true',
    );

    final data = response.data?['transactions'] as List<Map<String, dynamic>>;
    return data.map((e) => Transaction.fromMap(e)).toList();
  }

  Future<bool> editTransaction(Transaction transaction) async {
    try {
      final response = await dio.put<dynamic>(
        '$hostUrl/transaction',
        data: transaction.toMap(),
      );

      return response.statusCode == 200;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }

  Future<String> login({required String code}) async {
    final response = await dio.post<Map<String, dynamic>>(
      '$hostUrl/login',
      data: {'code': code},
    );
    final token = response.data?['token'] as String?;
    if (token != null) {
      return token;
    }
    if (response.data?['error'] != null) {
      throw const AuthInvalidCredentialsException();
    }

    throw Exception();
  }

  Future<bool> uploadFile(Uint8List fileBytes, Bank bank) async {
    try {
      final url = '$uploadHostUrl${bank.uploadUrl}';
      final formData = FormData.fromMap(
        {
          'file': MultipartFile.fromBytes(
            fileBytes,
            filename: 'file.${bank.ext}',
          ),
        },
      );
      final respons = await dio.post<dynamic>(
        url,
        data: formData,
      );
      return respons.statusCode == 200;
    } catch (e) {
      return false;
    }
  }
}
