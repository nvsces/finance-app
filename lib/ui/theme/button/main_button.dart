import 'package:finance_app/extensions/build_context_ext.dart';
import 'package:finance_app/ui/theme/button/app_button_base.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String label;
  final bool hasIcon;
  final bool hasProgress;
  final bool enabled;
  final VoidCallback? onTap;
  final bool checkNetwork;
  final String? icon;
  final PositionIcon positionIcon;

  const MainButton._({
    super.key,
    required this.label,
    required this.hasIcon,
    required this.hasProgress,
    required this.enabled,
    required this.checkNetwork,
    this.onTap,
    this.icon,
    this.positionIcon = PositionIcon.left,
  });

  factory MainButton.normal({
    required String label,
    bool hasIcon = false,
    bool hasProgress = false,
    bool enabled = true,
    bool checkNetwork = false,
    VoidCallback? onTap,
    String? icon,
    PositionIcon positionIcon = PositionIcon.left,
    Key? key,
  }) {
    return MainButton._(
      label: label,
      hasIcon: hasIcon,
      hasProgress: hasProgress,
      enabled: enabled,
      onTap: onTap,
      checkNetwork: checkNetwork,
      key: key,
      icon: icon,
      positionIcon: positionIcon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppButton(
      activeBackground: context.colors.mainElement,
      activeLabelColor: context.colors.white,
      disabledBackground: context.colors.secondaryElement,
      disabledLabelColor: context.colors.white,
      label: label,
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
