import 'package:finance_app/ui/mobile/widgets/transaction_widget.dart';
import 'package:flutter/material.dart';

import '../../../data/models/transaction.dart';

class TransactionDaysWidget extends StatelessWidget {
  final List<Transaction> transaction;
  final DateTime date;
  const TransactionDaysWidget(
      {super.key, required this.transaction, required this.date});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(date.toString()),
      ...List.generate(
        transaction.length,
        (index) => TransactionWidget(
          transaction: transaction[index],
        ),
      ),
    ]);
  }
}
