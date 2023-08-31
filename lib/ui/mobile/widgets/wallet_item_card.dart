import 'package:finance_app/data/models/wallet.dart';
import 'package:finance_app/extensions/build_context_ext.dart';
import 'package:finance_app/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';

class WalletItemCard extends StatelessWidget {
  final Wallet wallet;
  const WalletItemCard({super.key, required this.wallet});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      height: 168,
      width: 260,
      decoration: BoxDecoration(
        color: context.colors.mainElement,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              wallet.title,
              style: AppTextStyle.mainWalletTitleText.copyWith(
                fontSize: 24.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 26),
            Text(
              wallet.description,
              style: AppTextStyle.mainWalletDescriptionText.copyWith(
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
              ),
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Text(
                  '${wallet.balance} ${wallet.currency}',
                  style: AppTextStyle.mainWalletBalanceText.copyWith(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
