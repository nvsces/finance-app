import 'package:finance_app/data/repositiries/finance/finance_repositiry.dart';
import 'package:finance_app/di/injector.dart';
import 'package:finance_app/domain/entity/transaction_filter.dart';
import 'package:finance_app/domain/state/expenses/expenses_bloc.dart';
import 'package:finance_app/domain/state/income/income_bloc.dart';
import 'package:finance_app/domain/state/wallet/wallet_bloc.dart';
import 'package:finance_app/extensions/build_context_ext.dart';
import 'package:finance_app/ui/date_formatters.dart';
import 'package:finance_app/ui/mobile/widgets/calendar/custom_calendar.dart';
import 'package:finance_app/ui/mobile/widgets/create_wallet_start_widget.dart';
import 'package:finance_app/ui/mobile/widgets/home/expenses_content.dart';
import 'package:finance_app/ui/mobile/widgets/home/income_content.dart';
import 'package:finance_app/ui/mobile/widgets/with_out_wallet_widget.dart';
import 'package:finance_app/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ExpensesBloc>(
          create: (context) =>
              injector.get<ExpensesBloc>()..add(const LoadExpensesEvent()),
        ),
        BlocProvider<IncomeBloc>(
          create: (context) =>
              injector.get<IncomeBloc>()..add(const LoadIncomeEvent()),
        ),
      ],
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
            Container(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 20.0,
                top: 8.0,
                bottom: 16.0,
              ),
              height: 84,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: state.wallets.length,
                itemBuilder: (context, i) {
                  return WithOutWalletWidget(
                    wallet: state.wallets[i],
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(width: 10.0),
              ),
            ),
            const Expanded(child: _HomeTabsWidget()),
          ],
        );
      },
    );
  }
}

class _HomeTabsWidget extends StatefulWidget {
  const _HomeTabsWidget();

  @override
  State<_HomeTabsWidget> createState() => _HomeTabsWidgetState();
}

class _HomeTabsWidgetState extends State<_HomeTabsWidget>
    with SingleTickerProviderStateMixin<_HomeTabsWidget> {
  int initialTabIndex = 0;

  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(
      initialIndex: initialTabIndex,
      length: 2,
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  bool get expenses => tabController.index == 0;

  String getPeriodTitle(BuildContext context) {
    final filter = AbstractFinanceRepository.transactionFilter;
    final formater = DateFormatters.calendar;
    if (filter.start == null && filter.end == null) {
      return context.localization.homePeriod;
    }
    final startDate =
        filter.start == null ? '' : formater.format(filter.start!);
    final endDate = filter.end == null ? '' : formater.format(filter.end!);

    return '$startDate-$endDate';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0),
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
                            tabController.animateTo(0);
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
                              tabController.animateTo(1);
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
                    getPeriodTitle(context),
                    style: AppTextStyle.appButton1.copyWith(
                      color: context.colors.mainText,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onPressed: () async {
                    await customRangePicker(context, () {
                      setState(() {
                        context
                            .read<ExpensesBloc>()
                            .add(const ExpensesEvent.load());
                        context
                            .read<IncomeBloc>()
                            .add(const IncomeEvent.load());
                      });
                    });
                  },
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: const [
              ExpensesContent(),
              IncomeContent(),
            ],
          ),
        ),
      ],
    );
  }

  Future<void> customRangePicker(
    BuildContext context,
    void Function() onChangeFilter,
  ) {
    return showModalBottomSheet(
      context: context,
      useRootNavigator: true,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (context) => Material(
        child: CustomCalendar(
          initialStartDate: AbstractFinanceRepository.transactionFilter.start,
          initialEndDate: AbstractFinanceRepository.transactionFilter.end,
          onDateTimeChanged: (start, end) {
            AbstractFinanceRepository.transactionFilter = TransactionFilter(
              start: start,
              end: end,
            );
            onChangeFilter.call();
          },
        ),
      ),
    );
  }

  // customShowDateRangePicker(
  //   context: context, firstDate: DateTime(2023), lastDate: DateTime(2024),
  //   initialEntryMode: DatePickerEntryMode.calendar,
  //   helpText: 'Select period',
  //   cancelText: 'cancelText',
  //   confirmText: 'confirmText',
  //   saveText: 'saveText',
  //   errorFormatText: 'errorFormatText',
  //   errorInvalidText: 'errorInvalidText',
  //   errorInvalidRangeText: 'errorInvalidRangeText',
  //   fieldStartHintText: 'fieldStartHintText',
  //   fieldEndHintText: 'fieldEndHintText',
  //   fieldStartLabelText: 'fieldStartLabelText',
  //   fieldEndLabelText: 'fieldEndLabelText',
  //   locale: Locale('en'), // сюда надо дотянуть изменение локализации
  // );
}
