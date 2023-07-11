import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static TextStyle get _baseFonts => GoogleFonts.poppins();

  static TextStyle get appButton1 => _baseFonts.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 20,
      );
}
