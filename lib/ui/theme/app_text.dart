import 'package:finance_app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';

//От этого тоже постепенно избавлюсь!..........
class AppText extends StatelessWidget {
  const AppText(
      {super.key,
      required this.text,
      this.color = AppColors.white,
      this.weight = 6,
      required this.size,});

  final String text;
  final Color color;
  final int weight;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      text,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.values[weight],
        fontSize: size,
      ),
    );
  }
}
