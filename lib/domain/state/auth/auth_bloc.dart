import 'dart:async';

import 'package:finance_app/data/api/abstract_dio_auth_actions.dart';
import 'package:finance_app/data/api/dio_helper.dart';
import 'package:finance_app/data/repositiries/auth/abstract_auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.freezed.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState>
    implements AbstractDioAuthActions {
  final AbstractAuthRepository _authRepository;

  AuthBloc(this._authRepository, {DioHelper? dioHelper})
      : super(const AuthState.notAuthed()) {
    dioHelper?.dioAuthActions = this;

    on<AuthInitEvent>(_onAuthInitEvent);
    on<AuthLogoutEvent>(_onAuthLogoutEvent);
  }

  Future<void> _onAuthInitEvent(
    AuthInitEvent event,
    Emitter<AuthState> emit,
  ) async {
    final token = await _authRepository.checkAuth();
    print('_onAuthInitEvent');
    print(token);
    if (token.isNotEmpty) {
      emit(AuthState.authed(token: token));
      print('AuthState.authed');
      return;
    }
    emit(const AuthState.notAuthed());
  }

  Future<void> _onAuthLogoutEvent(
    AuthLogoutEvent event,
    Emitter<AuthState> emit,
  ) async {
    print('logout event');
    emit(
      const AuthState.notAuthed(),
    );
    await _authRepository.logout();
  }

  @override
  void onUnAuthedError() {
    print('onUnAuthedError');
    add(const AuthEvent.logout());
  }

  @override
  String? get token => state.mapOrNull(
        authed: (auth) {
          return auth.token;
        },
      );
}
