part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const AuthEvent._();

  const factory AuthEvent.init() = AuthInitEvent;

  const factory AuthEvent.logout() = AuthLogoutEvent;
}
