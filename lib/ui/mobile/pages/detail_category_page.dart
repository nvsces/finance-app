import 'package:finance_app/data/models/transaction.dart';
import 'package:finance_app/data/repositiries/transaction/transaction_repository.dart';
import 'package:finance_app/di/injector.dart';
import 'package:finance_app/domain/state/expenses/expenses_bloc.dart';
import 'package:finance_app/domain/state/income/income_bloc.dart';
import 'package:finance_app/domain/state/transaction/category_transaction_bloc.dart';
import 'package:finance_app/extensions/build_context_ext.dart';
import 'package:finance_app/ui/mobile/widgets/expenses_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class DetailCategoryPage extends StatelessWidget {
  const DetailCategoryPage({super.key, required this.transactions});
  final List<Transaction> transactions;

  @override
  Widget build(BuildContext context) {
    final categoryName = transactions.first.category.name;
    return BlocProvider(
      create: (context) =>
          CategoryTransactionBloc(injector.get<TransactionRepository>())
            ..add(InitCategoryTransactionEvent(transactions)),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: context.colors.mainElement,
            ),
          ),
          title: Text(
            categoryName,
            style: TextStyle(
              color: context.colors.mainElement,
            ),
          ),
        ),
        body: BlocBuilder<CategoryTransactionBloc, CategoryTransactionState>(
          builder: (context, state) {
            return ExpensesList(transactions: state.transactions);
          },
        ),
      ),
    );
  }
}
