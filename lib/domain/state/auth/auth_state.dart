// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class AuthState {}

class AuthAuthedState extends AuthState {
  final String token;
  AuthAuthedState({
    required this.token,
  });
}

class AuthNotAuthedState extends AuthState {}
