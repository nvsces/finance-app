import 'package:finance_app/ui/theme/app_button.dart';
import 'package:finance_app/ui/theme/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../theme/app_colors.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  onPressed: () {},
                  child: const AppText(
                    text: 'Получить код',
                    size: 16,
                    color: AppColors.purple,
                  )),
              const SizedBox(
                height: 15,
              ),
              AppButton(
                child: const AppText(
                  text: 'Войти',
                  size: 20,
                ),
                func: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
