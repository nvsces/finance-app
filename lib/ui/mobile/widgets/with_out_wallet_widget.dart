import 'package:finance_app/data/models/wallet.dart';
import 'package:finance_app/extensions/build_context_ext.dart';
import 'package:finance_app/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';

class WithOutWalletWidget extends StatelessWidget {
  final Wallet wallet;
  final bool isSelected;
  const WithOutWalletWidget({
    super.key,
    required this.wallet,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 60,
          width: 100,
          decoration: BoxDecoration(
            color: isSelected ? Colors.red : context.colors.mainElement,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(wallet.title, style: AppTextStyle.mainWalletTitleText),
                const SizedBox(height: 3),
                Text(
                  wallet.description,
                  style: AppTextStyle.mainWalletDescriptionText,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      '${wallet.balance} ${wallet.currency}',
                      style: AppTextStyle.mainWalletBalanceText,
                    ),
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
