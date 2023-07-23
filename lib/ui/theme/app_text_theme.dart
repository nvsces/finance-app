import 'package:finance_app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: avoid_classes_with_only_static_members
class AppTextStyle {
  static TextStyle get _baseFonts => GoogleFonts.poppins();

  static TextStyle get appButton1 => _baseFonts.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 20,
      );

  static TextStyle get mainNormalText => _baseFonts.copyWith(
        fontWeight: FontWeight.w500,
        color: AppColors.mainText,
        fontSize: 20,
      );
  static TextStyle get createWaletText => _baseFonts.copyWith(
        fontWeight: FontWeight.w600,
        color: AppColors.mainText,
        fontSize: 32,
      );
  static TextStyle get balanceWaletText => _baseFonts.copyWith(
        fontWeight: FontWeight.w500,
        color: Colors.white,
        fontSize: 20,
      );
  static TextStyle get titleWaletText => _baseFonts.copyWith(
        fontWeight: FontWeight.w700,
        color: Colors.white,
        fontSize: 24,
      );
  static TextStyle get descriptionWaletText => _baseFonts.copyWith(
        fontWeight: FontWeight.w400,
        color: Colors.white,
        fontSize: 16,
      );
  static TextStyle get walletButtonText => _baseFonts.copyWith(
        fontWeight: FontWeight.w500,
        color: Colors.white,
        fontSize: 16,
      );

  static TextStyle get mainBoldText => _baseFonts.copyWith(
        fontWeight: FontWeight.w900,
        fontSize: 24,
        color: AppColors.mainText,
      );

  static TextStyle get mainLigthText => _baseFonts.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 12,
        color: AppColors.mainText,
      );

  static TextStyle get secondaryText => _baseFonts.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 12,
      color: AppColors.secondaryText);

  static TextStyle get mainWalletTitleText => _baseFonts.copyWith(
        fontWeight: FontWeight.w400,
        color: AppColors.navigationAndPanels,
        fontSize: 16,
      );

  static TextStyle get mainWalletBalanceText => _baseFonts.copyWith(
        fontWeight: FontWeight.w700,
        color: AppColors.navigationAndPanels,
        fontSize: 8,
      );

  static TextStyle get mainWalletDescriptionText => _baseFonts.copyWith(
        fontWeight: FontWeight.w400,
        color: AppColors.navigationAndPanels,
        fontSize: 6,
      );

  static TextStyle get transactionText => _baseFonts.copyWith(
        fontWeight: FontWeight.w500,
        color: AppColors.navigationAndPanels,
        fontSize: 8,
      );
}
