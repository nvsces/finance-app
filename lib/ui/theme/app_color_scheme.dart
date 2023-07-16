import 'package:flutter/material.dart';

@immutable
class AppColorScheme extends ThemeExtension<AppColorScheme> {
  final Color white;
  final Color black;
  final Color mainElement;
  final Color mainText;
  final Color secondaryElement;
  final Color secondaryText;
  final Color textunselect;
  final Color defaultColor3;
  final Color transparent;
  final Color grey;
  final Color purple;
  final Color greenBorder;
  final Color red;

  const AppColorScheme({
    required this.white,
    required this.black,
    required this.mainElement,
    required this.mainText,
    required this.secondaryElement,
    required this.secondaryText,
    required this.textunselect,
    required this.defaultColor3,
    required this.transparent,
    required this.grey,
    required this.purple,
    required this.greenBorder,
    required this.red,
  });

  @override
  AppColorScheme lerp(ThemeExtension<AppColorScheme>? other, double t) {
    if (other is! AppColorScheme) {
      return this;
    }
    return AppColorScheme(
      white: Color.lerp(white, other.white, t) ?? white,
      black: Color.lerp(black, other.black, t) ?? black,
      defaultColor3:
          Color.lerp(defaultColor3, other.defaultColor3, t) ?? defaultColor3,
      greenBorder: Color.lerp(greenBorder, other.greenBorder, t) ?? greenBorder,
      grey: Color.lerp(grey, other.grey, t) ?? grey,
      mainElement: Color.lerp(mainElement, other.mainElement, t) ?? mainElement,
      mainText: Color.lerp(mainText, other.mainText, t) ?? mainText,
      purple: Color.lerp(purple, other.purple, t) ?? purple,
      secondaryElement:
          Color.lerp(secondaryElement, other.secondaryElement, t) ??
              secondaryElement,
      secondaryText:
          Color.lerp(secondaryText, other.secondaryText, t) ?? secondaryText,
      textunselect:
          Color.lerp(textunselect, other.textunselect, t) ?? textunselect,
      transparent: Color.lerp(transparent, other.transparent, t) ?? transparent,
      red: Color.lerp(red, other.red, t) ?? red,
    );
  }

  @override
  AppColorScheme copyWith({
    Color? white,
    Color? black,
    Color? mainElement,
    Color? mainText,
    Color? secondaryElement,
    Color? secondaryText,
    Color? textunselect,
    Color? defaultColor3,
    Color? transparent,
    Color? grey,
    Color? purple,
    Color? greenBorder,
    Color? red,
  }) {
    return AppColorScheme(
      white: white ?? this.white,
      black: black ?? this.black,
      mainElement: mainElement ?? this.mainElement,
      mainText: mainText ?? this.mainText,
      secondaryElement: secondaryElement ?? this.secondaryElement,
      secondaryText: secondaryText ?? this.secondaryText,
      textunselect: textunselect ?? this.textunselect,
      defaultColor3: defaultColor3 ?? this.defaultColor3,
      transparent: transparent ?? this.transparent,
      grey: grey ?? this.grey,
      purple: purple ?? this.purple,
      greenBorder: greenBorder ?? this.greenBorder,
      red: red ?? this.red,
    );
  }
}
