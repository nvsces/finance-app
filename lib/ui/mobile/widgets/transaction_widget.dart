import 'package:finance_app/data/models/transaction.dart';
import 'package:finance_app/resources/svgs.dart';
import 'package:finance_app/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TransactionWidget extends StatelessWidget {
  final Transaction transaction;
  const TransactionWidget({
    super.key, required this.transaction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                child: SvgPicture.asset(
                  Svgs.iconShopping,
                ),
              ),
              const SizedBox(width: 16),
              SizedBox(width: 100, child: Text(transaction.name, style: AppTextStyle.transactionText)),
              const Spacer(),
              Text(
                '${transaction.value}₽',
                style: AppTextStyle.transactionText,
              )
            ],
          ),
        const SizedBox(height: 16,)],
      ),
    );
  }
}
