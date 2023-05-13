part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required String code,
    required bool isSubmitting,
    required LoginResult loginResult,
  }) = _LoginState;

  factory LoginState.initial() => const LoginState(
        code: '',
        isSubmitting: false,
        loginResult: LoginResult.empty(),
      );
}

@freezed
class LoginResult with _$LoginResult {
  const factory LoginResult.success() = LoginSuccess;

  const factory LoginResult.failure({required LoginFailReason reason}) =
      LoginFailure;

  const factory LoginResult.empty() = LoginEmpty;
}

@freezed
class LoginFailReason with _$LoginFailReason {
  const factory LoginFailReason.serverError() = LoginServerError;

  const factory LoginFailReason.noInternet() = LoginNoConnectionError;

  const factory LoginFailReason.invalidCredentials() = LoginInvalidCredentials;
}
