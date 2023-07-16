import 'package:finance_app/data/api/api_handler.dart';
import 'package:finance_app/data/repositiries/auth/abstract_auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

const tokenKey = 'tokenKey';

class AuthRepositoryImpl implements AbstractAuthRepository {
  final ApiHandler apiHandler;
  final SharedPreferences preferences;

  AuthRepositoryImpl(this.apiHandler, this.preferences);

  @override
  Future<String> login({required String code}) async {
    final token = await apiHandler.login(code: code);
    debugPrint(token);
    await preferences.setString(tokenKey, token);
    return token;
  }

  @override
  Future<String> checkAuth() async {
    return preferences.getString(tokenKey) ?? '';
  }

  @override
  Future<void> logout() async {
    preferences.remove(tokenKey);
  }
}
