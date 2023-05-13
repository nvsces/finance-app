abstract class AbstractAuthRepository {
  Future<String> login(String code);

  Future<String> checkAuth();
  Future<void> logout();
}
