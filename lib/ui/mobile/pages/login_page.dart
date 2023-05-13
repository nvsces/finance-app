import 'package:finance_app/di/injector.dart';
import 'package:finance_app/domain/state/auth/auth_bloc.dart';
import 'package:finance_app/domain/state/auth/login_cubit.dart';
import 'package:finance_app/router/mobile_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>(
      create: (context) => injector.get(),
      child: const _LoginContent(),
    );
  }
}

class _LoginContent extends StatelessWidget {
  const _LoginContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        final loginSuccess = context
            .read<LoginCubit>()
            .state
            .loginResult
            .whenOrNull(success: () => true);

        if (loginSuccess ?? false) {
          context.read<AuthBloc>().add(const AuthEvent.init());
          // context.goNamed(MobileRoutes.expenses.name);
        }
      },
      builder: (context, state) => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (s) {
                  context.read<LoginCubit>().updateCode(s);
                },
              ),
              const SizedBox(
                height: 30.0,
              ),
              TextButton(
                onPressed: () {
                  context.read<LoginCubit>().signInWithCredentials();
                },
                child: const Text('Login'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
