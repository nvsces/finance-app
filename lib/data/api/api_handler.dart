// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';

import '../../app/config.dart';

class ApiHandler {
  final Dio client;
  ApiHandler({
    required this.client,
  });

  Future<String> login(String code) async {
    final response = await client.post('$hostUrl/login', data: {'code': code});
    return response.data['token'];
  }
}
