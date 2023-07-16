import 'package:finance_app/ui/theme/app_color_scheme.dart';
import 'package:finance_app/ui/theme/app_colors.dart';
import 'package:finance_app/ui/theme/app_theme_config.dart';
import 'package:flutter/material.dart';

ThemeData buildLightTheme() {
  final baseTheme = ThemeData.light();
  const colors = AppColorScheme(
    white: AppColors.white,
    black: AppColors.black,
    defaultColor3: AppColors.defaultColor3,
    grey: AppColors.grey,
    mainElement: AppColors.mainElement,
    greenBorder: AppColors.greenBorder,
    mainText: AppColors.mainText,
    purple: AppColors.purple,
    secondaryElement: AppColors.secondaryElement,
    secondaryText: AppColors.secondaryText,
    textunselect: AppColors.textunselect,
    transparent: AppColors.transparent,
    red: AppColors.red,
  );
  return baseTheme.applyConfig(colors);
}
