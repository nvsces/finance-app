import 'package:finance_app/data/repositiries/auth/auth_repository.dart';
import 'package:finance_app/di/injector.dart';
import 'package:finance_app/domain/state/auth/auth_bloc.dart';
import 'package:finance_app/domain/state/auth/login_cubit.dart';

import 'package:finance_app/ui/theme/app_button.dart';
import 'package:finance_app/ui/theme/app_text.dart';
import 'package:finance_app/utils/url_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../theme/app_colors.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>(
      create: (context) => injector.get<LoginCubit>(),
      child: _LoginContent(),
    );
  }
}

class _LoginContent extends StatelessWidget {
  const _LoginContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state.loginResult is LoginSuccess) {
          context.read<AuthBloc>().add(const AuthInitEvent());
        }
      },
      builder: (context, state) => Scaffold(
        body: Container(
          margin: const EdgeInsets.only(right: 30, left: 30),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const AppText(
                  text: 'Finance',
                  size: 36,
                  weight: 8,
                ),
                const SizedBox(
                  height: 75,
                ),
                const AppText(
                  text: 'Для входа необходимо ввести код:',
                  size: 16,
                ),
                const SizedBox(
                  height: 13,
                ),
                TextFormField(
                  onChanged: (value) {
                    context.read<LoginCubit>().updateCode(value);
                  },
                  keyboardType: TextInputType.text,
                  inputFormatters: [
                    FilteringTextInputFormatter.singleLineFormatter
                  ],
                  decoration: const InputDecoration(
                      labelText: 'Код',
                      labelStyle: TextStyle(color: AppColors.grey),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                          borderSide: BorderSide(color: AppColors.black)),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        borderSide: BorderSide(color: AppColors.red),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                          borderSide: BorderSide(color: AppColors.purple))),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextButton(
                    onPressed: () {
                      UrlUtils.openBot();
                    },
                    child: const AppText(
                      text: 'Получить код',
                      size: 16,
                      color: AppColors.purple,
                    )),
                const SizedBox(
                  height: 15,
                ),
                AppButton(
                  child: state.isSubmitting
                      ? Center(child: CircularProgressIndicator())
                      : const AppText(
                          text: 'Войти',
                          size: 20,
                        ),
                  func: () {
                    context.read<LoginCubit>().signInWithCredentials();
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}


