import 'package:finance_app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  AppButton(
      {Key? key,
      this.backgroundColor = AppColors.green,
      this.borderColor = AppColors.greenBorder,
      this.overlayColor = AppColors.greenBorder,
      required this.child,
      this.textColor = AppColors.black,
      required this.func})
      : super(key: key);

  Color? backgroundColor;
  Color? overlayColor;
  Color borderColor;
  Color textColor;
  Widget child;
  Function() func;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: func,
      child: child,
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(const Size(130, 50)),
        backgroundColor: MaterialStateProperty.all(backgroundColor),
        side: MaterialStateProperty.all(
          BorderSide(
            color: borderColor,
            width: 3,
          ),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        overlayColor: MaterialStateProperty.all(overlayColor),
      ),
    );
  }
}
