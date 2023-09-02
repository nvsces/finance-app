import 'package:finance_app/data/models/transaction.dart';
import 'package:finance_app/data/models/wallet.dart';
import 'package:finance_app/domain/state/wallet/wallet_bloc.dart';
import 'package:finance_app/extensions/build_context_ext.dart';
import 'package:finance_app/resources/svgs.dart';
import 'package:finance_app/ui/mobile/widgets/wallet_item_card.dart';
import 'package:finance_app/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TransactionWidget extends StatelessWidget {
  final Transaction transaction;
  const TransactionWidget({
    super.key,
    required this.transaction,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 14,
              backgroundColor: context.colors.mainElement,
              child: SvgPicture.asset(
                Svgs.iconShopping,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                transaction.name,
                style: AppTextStyle.transactionText.copyWith(
                  color: context.colors.mainText,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            const Spacer(),
            Text(
              '${transaction.value} ₽',
              style: AppTextStyle.transactionText.copyWith(
                color: context.colors.mainElement,
              ),
            ),
            BlocBuilder<WalletBloc, WalletState>(
              builder: (context, state) {
                return WalletItemCard(
                  wallet: walletCard(state.wallets, transaction.walletId),
                  size: const [
                    5,
                    30,
                    50,
                    6,
                    5,
                    1,
                    10,
                    2,
                    0,
                    0,
                    5
                  ], // потом исправлю, а то чет я уже подустал...
                );
              },
            )
          ],
        ),
        const SizedBox(
          height: 16,
        )
      ],
    );
  }
}

Wallet walletCard(List<Wallet> wallet, int trWltId) {
  for (final it in wallet) {
    if (it.id == trWltId) {
      return it;
    }
  }
  return wallet.first;
}
