part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.authed({
    required String token,
  }) = AuthAuthedState;

  const factory AuthState.notAuthed() = AuthNotAuthedState;
}
