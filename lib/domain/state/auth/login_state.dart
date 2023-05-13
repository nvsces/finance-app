// ignore_for_file: public_member_api_docs, sort_constructors_first
class LoginState {
  final String code;
  final bool isSubmitting;
  final LoginResult loginResult;
  LoginState({
    required this.code,
    required this.isSubmitting,
    required this.loginResult,
  });

  LoginState copyWith({
    String? code,
    bool? isSubmitting,
    LoginResult? loginResult,
  }) {
    return LoginState(
      code: code ?? this.code,
      isSubmitting: isSubmitting ?? this.isSubmitting,
      loginResult: loginResult ?? this.loginResult,
    );
  }
}

enum LoginResult {
  empty,
  success,
  error;
}
