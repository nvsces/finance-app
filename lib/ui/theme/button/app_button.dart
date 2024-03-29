import 'package:finance_app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';

//Скоро избавлюсь от неё
class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    this.backgroundColor = AppColors.mainElement,
    this.height = 40, this.width = double.infinity,
    this.overlayColor = AppColors.secondaryElement,
    this.borderColor,
    required this.onPressed,
    required this.child, 
  });

  final Color backgroundColor;
  final Color overlayColor;
  final Color? borderColor;
  final void Function() onPressed;
  final Widget child;
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          minimumSize: MaterialStateProperty.all(const Size(135, 52)),
          backgroundColor: MaterialStateProperty.all(backgroundColor),
          side: MaterialStateProperty.all(
          BorderSide(
            color: borderColor ?? backgroundColor,
            width: 1.5,
          ),),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          overlayColor: MaterialStateProperty.all(overlayColor),
        ),
        child: child,
      ),
    );
  }
}
