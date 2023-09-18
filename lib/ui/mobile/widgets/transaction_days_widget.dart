import 'package:finance_app/data/models/transaction.dart';
import 'package:finance_app/ui/date_formatters.dart';
import 'package:finance_app/ui/mobile/widgets/transaction_widget.dart';
import 'package:finance_app/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';

class TransactionDaysWidget extends StatelessWidget {
  final List<Transaction> transaction;
  final DateTime date;
  const TransactionDaysWidget(
      {super.key, required this.transaction, required this.date});

  @override
  Widget build(BuildContext context) {
    final formater = DateFormatters.calendar;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Text(
                formater.format(date),
                style: AppTextStyle.dateText,
              ),
              const SizedBox(
                height: 12,
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          ...List.generate(
            transaction.length,
            (index) => TransactionWidget(
              transaction: transaction[index],
            ),
          ),
          const SizedBox(
            height: 36,
          ),
        ],
      ),
    );
  }
}
