import 'abstract_auth_repository.dart';

class AuthRepository implements AbstractAuthRepository {
  @override
  Future<String> login(String code) async {
    await Future.delayed(Duration(seconds: 3));
    return 'хуй';
  }

  @override
  Future<String> checkAuth() async {
    return 'токен';
  }

  @override
  Future<void> logout() {
    throw UnimplementedError();
  }
}
