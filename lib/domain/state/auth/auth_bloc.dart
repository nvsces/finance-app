import 'package:finance_app/data/repositiries/auth/abstract_auth_repository.dart';
import 'package:finance_app/domain/state/auth/auth_event.dart';
import 'package:finance_app/domain/state/auth/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AbstractAuthRepository authRepository;

  AuthBloc(this.authRepository) : super(AuthNotAuthedState()) {
    on<AuthInitEvent>((event, emit) async {
      final token = await authRepository.checkAuth();
      if (token.isEmpty) {
        emit(AuthNotAuthedState());
        return;
      }
      emit(AuthAuthedState(token: token));
    });
    on<AuthLogoutEvent>((event, emit) {
      emit(AuthNotAuthedState());
      authRepository.logout();
    });
  }
}
