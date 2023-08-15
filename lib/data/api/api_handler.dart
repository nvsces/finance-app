import 'package:dio/dio.dart';
import 'package:finance_app/app/config.dart';
import 'package:finance_app/data/models/auth/auth_invalid_credentials_exception.dart';
import 'package:finance_app/data/models/transaction.dart';
import 'package:finance_app/data/models/wallet.dart';
import 'package:finance_app/domain/entity/bank_enum.dart';
import 'package:flutter/foundation.dart';

class ApiHandler {
  final Dio dio;

  ApiHandler(this.dio);

  Future<List<Transaction>> getTransactions(
    DateTime? start,
    DateTime? end,
    String? type,
  ) async {
    final typeQuery = type == null ? '' : '&type=$type';
    final queryEnd = end == null
        ? DateTime.now().millisecondsSinceEpoch
        : end.millisecondsSinceEpoch;

    final queryStart = start == null ? 0 : start.millisecondsSinceEpoch;

    final response = await dio.get<Map<String, dynamic>>(
      '$hostUrl/transaction?start=$queryStart&end=$queryEnd&enabled=true$typeQuery',
    );

    final data = response.data?['transactions'] as List;
    return data
        .map((e) => Transaction.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<bool> editTransaction(Transaction transaction) async {
    try {
      final response = await dio.put<dynamic>(
        '$hostUrl/transaction',
        data: transaction.toJson(),
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

  Future<bool> uploadFile(Uint8List fileBytes, Bank bank, int walletId) async {
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
        options: Options(
          headers: {'walletId': walletId},
        ),
      );
      return respons.statusCode == 200;
    } catch (e) {
      return false;
    }
  }

  Future<List<Wallet>> fetchWallets() async {
    final response = await dio.get<List<dynamic>>(
      '$hostUrl/wallet',
    );

    return response.data!
        .map((e) => Wallet.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<void> createWallet(Wallet wallet) async {
    await dio.post<dynamic>('$hostUrl/wallet', data: wallet.toJson());
  }
}
