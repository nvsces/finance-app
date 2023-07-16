import 'package:finance_app/di/injector.dart';
import 'package:finance_app/domain/state/auth/auth_bloc.dart';
import 'package:finance_app/domain/state/auth/login_cubit.dart';
import 'package:finance_app/domain/state/language/language_bloc.dart';
import 'package:finance_app/extensions/build_context_ext.dart';

import 'package:finance_app/ui/theme/button/main_button.dart';
import 'package:finance_app/ui/theme/button/secondary_button.dart';
import 'package:finance_app/utils/url_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_text_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>(
      create: (context) => injector.get<LoginCubit>(),
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
        if (state.loginResult is LoginSuccess) {
          context.read<AuthBloc>().add(const AuthInitEvent());
        }
      },
      builder: (context, state) => Scaffold(
        body: Container(
          margin: const EdgeInsets.only(right: 30, left: 30),
          child: Center(
            child: SingleChildScrollView(
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
                                color: context.colors.mainElement,
                              ),
                            ))),
                    Positioned.fill(
                        child: Center(
                            child: Text(
                      'hi',
                      style: AppTextStyle.appButton1
                          .copyWith(fontSize: 80, color: context.colors.white),
                    ))),
                  ]),
                  const SizedBox(
                    height: 76,
                  ),
                  Text(
                    context.localization.loginTitle,
                    style: AppTextStyle.appButton1.copyWith(
                        color: context.colors.mainText,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    height: 40,
                    width: 240,
                    child: TextFormField(
                      style: AppTextStyle.appButton1
                          .copyWith(color: context.colors.white, fontSize: 15),
                      onChanged: (value) {
                        context.read<LoginCubit>().updateCode(value);
                      },
                      keyboardType: TextInputType.text,
                      inputFormatters: [
                        FilteringTextInputFormatter.singleLineFormatter
                      ],
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: context.colors.secondaryElement,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20)),
                        contentPadding:
                            const EdgeInsets.only(left: 15, right: 15),
                        hintText: context.localization.loginField,
                        hintStyle: AppTextStyle.appButton1.copyWith(
                            color: context.colors.white, fontSize: 15),
                        enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide.none),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 32,
                    width: 120,
                    child: SecondaryButton.normal(
                      label: context.localization.loginGetCode,
                      fontSize: 12,
                      onTap: () {
                        UrlUtils.openBot();
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 108,
                  ),
                  SizedBox(
                    height: 40,
                    width: 208,
                    child: MainButton.normal(
                      label: context.localization.loginButton,
                      hasProgress: state.isSubmitting,
                      onTap: () {
                        context.read<LoginCubit>().signInWithCredentials();
                      },
                    ),
                  ),
                  BlocBuilder<LanguageBloc, LanguageState>(
                    builder: (context, state) {
                      return IconButton(
                          onPressed: () {
                            state.selectedLocale == state.supportedLocale.first
                                ? context.read<LanguageBloc>().add(
                                    LanguageEvent.selectedLocale(
                                        AppLocalizations.supportedLocales.last))
                                : context.read<LanguageBloc>().add(
                                    LanguageEvent.selectedLocale(
                                        AppLocalizations
                                            .supportedLocales.first));
                          },
                          icon: Icon(
                            Icons.language,
                            color: context.colors.mainElement,
                          ));
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
