import 'package:finance_app/data/models/transaction.dart';
import 'package:finance_app/ui/mobile/widgets/expenses_list.dart';
import 'package:flutter/material.dart';

class DetailCategoryPage extends StatelessWidget {
  const DetailCategoryPage({super.key, required this.transactions});
  final List<Transaction> transactions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ExpensesList(transactions: transactions),
    );
  }
}
