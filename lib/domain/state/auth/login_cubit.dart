import 'package:finance_app/data/repositiries/auth/abstract_auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final AbstractAuthRepository authRepository;
  LoginCubit(this.authRepository)
      : super(LoginState(
            code: '', isSubmitting: false, loginResult: LoginResult.empty));

// обновление текстового поля
  void updateCode(String value) {
    print(value);
    emit(state.copyWith(code: value));
  }

// состояние при входе
  void login() async {
    emit(state.copyWith(isSubmitting: true));
    try {
      final token = await authRepository.login(state.code);
      emit(state.copyWith(
          loginResult: LoginResult.success, isSubmitting: false));
    } catch (e) {
      emit(state.copyWith(loginResult: LoginResult.error, isSubmitting: false));
    }
  }
}
