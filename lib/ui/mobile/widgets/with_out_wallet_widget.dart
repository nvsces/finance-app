import 'package:finance_app/extensions/build_context_ext.dart';
import 'package:flutter/material.dart';
import '../../theme/app_text_theme.dart';

class WithOutWalletWidget extends StatelessWidget {
  const WithOutWalletWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 60,
          width: 100,
          decoration: BoxDecoration(
            color: context.colors.mainElement,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('title', style: AppTextStyle.mainWalletTitleText),
                const SizedBox(height: 3),
                Text(
                  'description',
                  style: AppTextStyle.mainWalletDescriptionText,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Text('balance \$',
                        style: AppTextStyle.mainWalletBalanceText),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
