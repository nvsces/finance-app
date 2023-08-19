import 'package:finance_app/data/models/auth/auth_invalid_credentials_exception.dart';
import 'package:finance_app/data/repositiries/auth/abstract_auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_cubit.freezed.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final AbstractAuthRepository _repository;

  LoginCubit(this._repository) : super(LoginState.initial());

  void updateCode(String value) {
    emit(
      state.copyWith(
        code: value,
        loginResult: const LoginResult.empty(),
      ),
    );
  }

  Future<void> signInWithCredentials() async {
    LoginResult result = const LoginResult.empty();
    final isCodeValid = state.code.isNotEmpty;
    if (isCodeValid) {
      emit(
        state.copyWith(
          isSubmitting: true,
          loginResult: result,
        ),
      );
      try {
        await _repository.login(code: state.code);

        result = const LoginResult.success();
      } on AuthInvalidCredentialsException catch (_) {
        result = const LoginResult.failure(
          reason: LoginFailReason.invalidCredentials(),
        );
      } catch (e) {
        result = const LoginResult.failure(
          reason: LoginFailReason.serverError(),
        );
      }
    }
    emit(
      state.copyWith(
        isSubmitting: false,
        loginResult: result,
      ),
    );
  }
}
