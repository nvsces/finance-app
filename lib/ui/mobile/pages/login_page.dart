import 'package:finance_app/di/injector.dart';
import 'package:finance_app/domain/state/auth/auth_bloc.dart';
import 'package:finance_app/domain/state/auth/login_cubit.dart';

import 'package:finance_app/ui/theme/app_button.dart';
import 'package:finance_app/utils/url_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_text_theme.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final AppTextTheme appTextTheme = AppTextTheme();
    return BlocProvider<LoginCubit>(
      create: (context) => injector.get<LoginCubit>(),
      child: _LoginContent(
        appTextTheme: appTextTheme,
      ),
    );
  }
}

class _LoginContent extends StatelessWidget {
  const _LoginContent({super.key, required this.appTextTheme});
  final AppTextTheme appTextTheme;
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
                Stack(children: [
                  Center(
                      child: Transform(
                          alignment: Alignment.center,
                          transform: Matrix4.rotationZ(
                            1.8,
                          ),
                          child: Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppColors.mainElement,
                            ),
                          ))),
                  Positioned.fill(
                      child: Center(
                          child: Text(
                    'hi',
                    style: appTextTheme.appButton1
                        .copyWith(fontSize: 80, color: AppColors.white),
                  ))),
                ]),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  'Enter the code to log in',
                  style: appTextTheme.appButton1.copyWith(
                      color: AppColors.mainText, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 12,
                ),
                SizedBox(
                  height: 40,
                  width: 240,
                  child: TextFormField(
                    style: appTextTheme.appButton1
                        .copyWith(color: AppColors.white, fontSize: 12),
                    onChanged: (value) {
                      context.read<LoginCubit>().updateCode(value);
                    },
                    keyboardType: TextInputType.text,
                    inputFormatters: [
                      FilteringTextInputFormatter.singleLineFormatter
                    ],
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColors.secondaryElement,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20)),
                      contentPadding:
                          const EdgeInsets.only(left: 15, right: 15),
                      hintText: 'code',
                      hintStyle: appTextTheme.appButton1
                          .copyWith(color: AppColors.white, fontSize: 12),
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide.none
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                AppButton(
                    backgroundColor: AppColors.secondaryElement,
                    borderColor: AppColors.mainElement,
                    height: 32,
                    width: 120,
                    onPressed: () {
                      UrlUtils.openBot();
                    },
                    child: Text(
                      'Get the code',
                      style: appTextTheme.appButton2
                          .copyWith(color: AppColors.mainText),
                    )),
                const SizedBox(
                  height: 100,
                ),
                AppButton(
                  height: 40,
                  width: 208,
                  child: state.isSubmitting
                      ? const Center(child: CircularProgressIndicator())
                      : Text(
                          'Log in',
                          style: appTextTheme.appButton1,
                        ),
                  onPressed: () {
                    context.read<LoginCubit>().signInWithCredentials();
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
