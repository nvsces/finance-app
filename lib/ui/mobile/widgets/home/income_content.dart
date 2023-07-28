import 'package:finance_app/domain/state/income/income_bloc.dart';
import 'package:finance_app/ui/mobile/widgets/chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IncomeContent extends StatelessWidget {
  const IncomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IncomeBloc, IncomeState>(
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
