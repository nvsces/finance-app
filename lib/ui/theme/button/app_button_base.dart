import 'package:finance_app/resources/svgs.dart';
import 'package:finance_app/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class AppButton extends StatelessWidget {
  final String? label;
  final double? fontSize;
  final SvgAsset? icon;
  final bool hasIcon;
  final Color activeBackground;
  final Color disabledBackground;
  final Color activeLabelColor;
  final Color disabledLabelColor;
  final BorderSide? enabledBorder;
  final BorderSide? disabledBorder;
  final bool hasProgress;
  final bool isMaxWidth;
  final bool enabled;
  final VoidCallback? onTap;
  final bool checkNetwork;
  final PositionIcon positionIcon;

  ///Do not use directly, see
  /// [PrimaryButton], [SecondaryButton],
  /// [PositiveButton], [NegativeButton], [GhostButton]

  const AppButton({
    super.key,
    required this.activeBackground,
    required this.disabledBackground,
    required this.activeLabelColor,
    required this.disabledLabelColor,
    this.label,
    this.icon,
    this.enabledBorder,
    this.disabledBorder,
    this.hasIcon = false,
    this.hasProgress = false,
    this.isMaxWidth = true,
    this.enabled = true,
    this.onTap,
    this.positionIcon = PositionIcon.left,
    required this.checkNetwork, this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    void onTapButton() {onTap?.call();}

    return InkWell(
      onTap: enabled
          ? !hasProgress
              ? onTapButton
              : null
          : null,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: enabledBorder != null && disabledBorder != null
              ? Border.fromBorderSide(
                  enabled ? enabledBorder! : disabledBorder!,
                )
              : null,
          color: enabled ? activeBackground : disabledBackground,
        ),
        child: hasProgress
            ? _ButtonProgressIndicator(
                color: activeLabelColor,
              )
            : Row(
                mainAxisSize: isMaxWidth ? MainAxisSize.max : MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (hasIcon && positionIcon == PositionIcon.left)
                    SizedBox(
                      child: SvgPicture.asset(
                        icon ?? Svgs.icMenuHomeSolid,
                        // colorFilter: getColor(activeLabelColor),
                      ),
                    ),
                  if (label != null &&
                      hasIcon &&
                      positionIcon == PositionIcon.left)
                    const SizedBox(
                      width: 8,
                    ),
                  if (label != null)
                    Flexible(
                      child: Text(
                        label!,
                        style: AppTextStyle.appButton1.copyWith(color:
                              enabled ? activeLabelColor : disabledLabelColor, fontSize: fontSize),
                        maxLines: 1,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  if (label != null &&
                      hasIcon &&
                      positionIcon == PositionIcon.right)
                    const SizedBox(
                      width: 8,
                    ),
                  if (hasIcon && positionIcon == PositionIcon.right)
                    SizedBox(
                      child: SvgPicture.asset(
                        icon ?? Svgs.icMenuHomeSolid,
                        // colorFilter: getColor(activeLabelColor),
                      ),
                    ),
                ],
              ),
      ),
    );
  }
}

class _ButtonProgressIndicator extends StatelessWidget {
  final Color color;

  const _ButtonProgressIndicator({
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 18,
        width: 18,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          color: color,
        ),
      ),
    );
  }
}

enum PositionIcon {
  left,
  right,
}
