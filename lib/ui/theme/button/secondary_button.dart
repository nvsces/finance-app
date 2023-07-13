import 'package:finance_app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';

import 'app_button_base.dart';


class SecondaryButton extends StatelessWidget {
  final String label;
  final double? fontSize;
  final bool hasIcon;
  final bool hasProgress;
  final bool enabled;
  final VoidCallback? onTap;
  final bool checkNetwork;
  final String? icon;
  final PositionIcon positionIcon;

  const SecondaryButton._({
    super.key,
    required this.label,
    required this.fontSize,
    required this.hasIcon,
    required this.hasProgress,
    required this.enabled,
    required this.checkNetwork,
    this.onTap,
    this.icon,
    this.positionIcon = PositionIcon.left, 
  });

  factory SecondaryButton.normal({
    required String label,
    double? fontSize,
    bool hasIcon = false,
    bool hasProgress = false,
    bool enabled = true,
    bool checkNetwork = false,
    VoidCallback? onTap,
    String? icon,
    PositionIcon positionIcon = PositionIcon.left,
    Key? key,
  }) {
    return SecondaryButton._(
      label: label,
      hasIcon: hasIcon,
      hasProgress: hasProgress,
      enabled: enabled,
      onTap: onTap,
      checkNetwork: checkNetwork,
      key: key,
      icon: icon,
      positionIcon: positionIcon, fontSize: fontSize,
    );
  }

  @override
  Widget build(BuildContext context) {
  
    return AppButton(
      activeBackground: AppColors.secondaryElement,
      activeLabelColor: AppColors.mainText,
      disabledBackground: AppColors.secondaryElement,
      disabledLabelColor: AppColors.white,
      enabledBorder: const BorderSide(
            color: AppColors.mainElement,
            width: 1.5
          ),
      disabledBorder: const BorderSide(
            color: AppColors.secondaryElement,
            width: 1.5
          ),
      label: label,
      fontSize: fontSize,
      hasIcon: hasIcon,
      onTap: onTap,
      hasProgress: hasProgress,
      enabled: enabled,     
      checkNetwork: checkNetwork,
      key: key,
      icon: icon,
      positionIcon: positionIcon,
    );
  }
}