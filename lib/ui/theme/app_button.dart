import 'package:finance_app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  AppButton({
    Key? key,
    this.backgroundColor = AppColors.white,
    this.borderColor = AppColors.grey,
    this.overlayColor = AppColors.greenBorder,
    required this.func,
    required this.child,
  }) : super(key: key);

  Color? backgroundColor;
  Color? overlayColor;
  Color borderColor;
  Function() func;
  Widget child;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: func,
      child: child,
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        minimumSize: MaterialStateProperty.all(const Size(135, 52)),
        backgroundColor: MaterialStateProperty.all(backgroundColor),
        side: MaterialStateProperty.all(
          BorderSide(
            color: borderColor,
            width: 3,
          ),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(17),
          ),
        ),
        overlayColor: MaterialStateProperty.all(overlayColor),
      ),
    );
  }
}
