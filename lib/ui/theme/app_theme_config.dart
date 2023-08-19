import 'package:finance_app/ui/theme/app_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

extension ThemeDataExt on ThemeData {
  ThemeData applyConfig(AppColorScheme colors) {
    return copyWith(
      textTheme: GoogleFonts.interTextTheme(textTheme),
      extensions: [colors],
      scaffoldBackgroundColor: colors.white,
    );
  }
}
