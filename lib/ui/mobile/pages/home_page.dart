import 'package:finance_app/di/injector.dart';
import 'package:finance_app/domain/state/expenses/expenses_bloc.dart';
import 'package:finance_app/domain/state/wallet/wallet_bloc.dart';
import 'package:finance_app/extensions/build_context_ext.dart';
import 'package:finance_app/ui/mobile/pages/income__page.dart';
import 'package:finance_app/ui/mobile/widgets/calendar/custom_date_range_picker.dart';
import 'package:finance_app/ui/mobile/widgets/chart.dart';
import 'package:finance_app/ui/mobile/widgets/create_wallet_start_widget.dart';
import 'package:finance_app/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExpensesBloc>(
      create: (context) => injector.get()..add(const LoadExpensesEvent()),
      child: const SafeArea(bottom: false, child: _HomeContent()),
    );
  }
}

class _HomeContent extends StatelessWidget {
  const _HomeContent();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WalletBloc, WalletState>(
      builder: (context, state) {
        if (state.wallets.isEmpty) {
          return const CreateWalletStartWidget();
        }
        return Column(
          children: [
            Row(
              children: List.generate(
                state.wallets.length,
                (i) => Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(state.wallets[i].title),
                ),
              ),
            ),
            const Expanded(child: _ExpensesContent()),
          ],
        );
      },
    );
  }
}

class _ExpensesContent extends StatefulWidget {
  const _ExpensesContent();

  @override
  State<_ExpensesContent> createState() => _ExpensesContentState();
}

bool expenses = true;

class _ExpensesContentState extends State<_ExpensesContent> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExpensesBloc, ExpensesState>(
      builder: (context, state) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  child: SizedBox(
                    height: 70,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 70,
                          width: 150,
                          child: Stack(
                            children: [
                              TextButton(
                                child: Text(
                                  context.localization.homeTitleExpenses,
                                  style: expenses
                                      ? AppTextStyle.appButton1.copyWith(
                                          color: context.colors.mainText,
                                          fontWeight: FontWeight.w600,
                                        )
                                      : AppTextStyle.secondaryText,
                                ),
                                onPressed: () {
                                  setState(() {
                                    expenses = true;
                                  });
                                },
                              ),
                              Positioned(
                                top: 25,
                                child: TextButton(
                                  child: Text(
                                    context.localization.homeTitleIncome,
                                    style: expenses
                                        ? AppTextStyle.secondaryText
                                        : AppTextStyle.appButton1.copyWith(
                                            color: context.colors.mainText,
                                            fontWeight: FontWeight.w600,
                                          ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      expenses = false;
                                    });
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                        const Spacer(),
                        TextButton(
                          child: Text(
                            context.localization.homePeriod,
                            style: AppTextStyle.appButton1.copyWith(
                              color: context.colors.mainText,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          onPressed: () async {
                            final DateTimeRange? dateTimeRange =
                                await customRangePicker(context);
                          },
                        )
                      ],
                    ),
                  ),
                ),
                if (state.isLoading)
                  const Center(
                    child: CircularProgressIndicator(),
                  )
                else
                  expenses
                      ? ChartWidget(transactions: state.transactions)
                      : const IncomeChart(),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<DateTimeRange?> customRangePicker(BuildContext context) =>
      customShowDateRangePicker(
        context: context, firstDate: DateTime(2023), lastDate: DateTime(2024),
        initialEntryMode: DatePickerEntryMode.calendar,
        helpText: 'Select period',
        cancelText: 'cancelText',
        confirmText: 'confirmText',
        saveText: 'saveText',
        errorFormatText: 'errorFormatText',
        errorInvalidText: 'errorInvalidText',
        errorInvalidRangeText: 'errorInvalidRangeText',
        fieldStartHintText: 'fieldStartHintText',
        fieldEndHintText: 'fieldEndHintText',
        fieldStartLabelText: 'fieldStartLabelText',
        fieldEndLabelText: 'fieldEndLabelText',
        locale: Locale('en'), // сюда надо дотянуть изменение локализации
      );
}
