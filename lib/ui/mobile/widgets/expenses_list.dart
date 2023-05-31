import 'package:finance_app/data/models/transaction.dart';
import 'package:finance_app/ui/mobile/widgets/transaction_card_widget.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.transactions});
  final List<Transaction> transactions;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, i) {
        return TransactionCardWidget(transaction: transactions[i]);
      },
      separatorBuilder: (context, i) => const SizedBox.shrink(),
      itemCount: transactions.length,
    );
  }
}
