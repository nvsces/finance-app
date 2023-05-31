import 'package:finance_app/di/injector.dart';
import 'package:finance_app/domain/state/auth/auth_bloc.dart';
import 'package:finance_app/domain/state/expenses/expenses_bloc.dart';
import 'package:finance_app/ui/mobile/pages/upload_file_page.dart';
import 'package:finance_app/ui/mobile/widgets/chart.dart';
import 'package:finance_app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../router/mobile_routes.dart';

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
            floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
            floatingActionButton: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: AppColors.textunselect,
                            width: 3,
                            style: BorderStyle.solid)),
                    width: 55,
                    height: 55,
                    child: FloatingActionButton(
                      elevation: 0,
                      onPressed: () {
                        context.pushReplacement((MobileRoutes.upload.path));
                      },
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.add,
                        color: AppColors.textunselect,
                        size: 40,
                      ),
                    ))),
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
