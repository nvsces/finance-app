abstract class AbstractAuthRepository {
  Future<String> checkAuth();

  Future<String> login({required String code});

  Future<void> logout();
}
