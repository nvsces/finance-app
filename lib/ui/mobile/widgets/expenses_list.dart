import 'package:finance_app/data/models/transaction.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.transactions});
  final List<Transaction> transactions;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, i) {
        return ListTile(
          title: Text(transactions[i].name),
          subtitle: Text(transactions[i].category),
          trailing: Text(transactions[i].value.toString()),
        );
      },
      separatorBuilder: (context, i) => const SizedBox.shrink(),
      itemCount: transactions.length,
    );
  }
}
