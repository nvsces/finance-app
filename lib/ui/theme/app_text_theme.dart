import 'package:finance_app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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

  static TextStyle get mainBoldText => _baseFonts.copyWith(
        fontWeight: FontWeight.w900,
        fontSize: 24,
        color: AppColors.mainText
      );
  static TextStyle get mainLigthText => _baseFonts.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 12,
        color: AppColors.mainText
      );

    static TextStyle get secondaryText => _baseFonts.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 12,
        color: AppColors.secondaryText
      );    
}
