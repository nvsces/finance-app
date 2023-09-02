import 'package:finance_app/data/models/wallet.dart';
import 'package:finance_app/extensions/build_context_ext.dart';
import 'package:finance_app/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';

class WalletItemCard extends StatelessWidget {
  final Wallet wallet;
  final List<double> size;
  WalletItemCard({super.key, required this.wallet, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(size[0]),
      height: size[1],
      width: size[2],
      decoration: BoxDecoration(
        color: context.colors.mainElement,
        borderRadius: BorderRadius.circular(size[3]),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size[4], vertical: size[5]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              wallet.title,
              style: AppTextStyle.mainWalletTitleText.copyWith(
                fontSize: size[6],
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: size[7]),
            Text(
              wallet.description,
              style: AppTextStyle.mainWalletDescriptionText.copyWith(
                fontSize: size[8],
                fontWeight: FontWeight.w400,
              ),
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: size[9]),
            Row(
              children: [
                Text(
                  '${wallet.balance} ₽',
                  style: AppTextStyle.mainWalletBalanceText.copyWith(
                    fontSize: size[10],
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
