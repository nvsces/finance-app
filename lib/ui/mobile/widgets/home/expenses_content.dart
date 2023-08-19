import 'package:finance_app/domain/state/expenses/expenses_bloc.dart';
import 'package:finance_app/ui/mobile/widgets/chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExpensesContent extends StatelessWidget {
  const ExpensesContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExpensesBloc, ExpensesState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return ChartWidget(transactions: state.transactions);
      },
    );
  }
}
