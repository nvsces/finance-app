// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:finance_app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  AppButton(
      {Key? key,
      this.backgroundColor = AppColors.defaultColor1,
      this.borderColor = AppColors.defaultColor2,
      this.overlayColor = AppColors.defaultColor3,
      required this.text,
      this.textColor = AppColors.textSelected,
      required this.func})
      : super(key: key);

  Color? backgroundColor;
  Color? overlayColor;
  Color borderColor;
  Color textColor;
  String text;
  Function() func;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: func,
      child: Text(
        text,
        style: TextStyle(color: textColor),
      ),
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(const Size(100, 40)),
        backgroundColor: MaterialStateProperty.all(backgroundColor),
        side: MaterialStateProperty.all(
          BorderSide(
            color: borderColor,
            width: 1,
          ),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        overlayColor: MaterialStateProperty.all(overlayColor),
      ),
    );
  }
}
