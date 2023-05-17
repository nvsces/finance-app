import 'package:finance_app/di/injector.dart';
import 'package:finance_app/domain/state/expenses/expenses_bloc.dart';
import 'package:finance_app/ui/mobile/widgets/chart.dart';
import 'package:finance_app/ui/mobile/widgets/expenses_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExpensesPage extends StatelessWidget {
  const ExpensesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExpensesBloc>(
      create: (context) => injector.get()..add(const LoadExpensesEvent()),
      child: const _ExpensesContent(),
    );
  }
}

class _ExpensesContent extends StatelessWidget {
  const _ExpensesContent();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExpensesBloc, ExpensesState>(
      builder: (context, state) {
        return Scaffold(
            body: state.isLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : ChartWidget(transactions: state.transactions)
            // Column(
            //     children: [
            //       Expanded(child: ChartWidget(transactions: state.transactions)),
            //       // Expanded(
            //       //   child: ExpensesList(
            //       //     transactions: state.transactions,
            //       //   ),
            //       // ),
            //     ],
            //   ),
            );
      },
    );
  }
}
