import 'package:finance_app/data/api/api_handler.dart';
import 'package:finance_app/data/repositiries/auth/abstract_auth_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

const tokenKey = 'tokenKey';

class AuthRepository implements AbstractAuthRepository {
  final ApiHandler apiHandler;
  final SharedPreferences sharedPreferences;
  AuthRepository(this.apiHandler, this.sharedPreferences);
  @override
  Future<String> login({required String code}) async {
    final token = await apiHandler.login(code: code);
    sharedPreferences.setString(tokenKey, token);
    return token;
  }

  @override
  Future<String> checkAuth() async {
    return sharedPreferences.getString(tokenKey) ?? '';
  }

  @override
  Future<void> logout() async {
    sharedPreferences.remove(tokenKey);
  }
}
