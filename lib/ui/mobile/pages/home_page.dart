import 'package:finance_app/data/repositiries/finance/finance_repositiry.dart';
import 'package:finance_app/di/injector.dart';
import 'package:finance_app/domain/entity/transaction_filter.dart';
import 'package:finance_app/domain/state/expenses/expenses_bloc.dart';
import 'package:finance_app/domain/state/income/income_bloc.dart';
import 'package:finance_app/domain/state/wallet/wallet_bloc.dart';
import 'package:finance_app/extensions/build_context_ext.dart';
import 'package:finance_app/ui/mobile/pages/income__page.dart';
import 'package:finance_app/ui/mobile/widgets/calendar/custom_calendar.dart';
import 'package:finance_app/ui/mobile/widgets/chart.dart';
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
          create: (context) => injector.get<IncomeBloc>(),
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
    with
        // AutomaticKeepAliveClientMixin<_HomeTabsWidget>,
        SingleTickerProviderStateMixin<_HomeTabsWidget> {
  // @override
  // bool get wantKeepAlive => true;

  int initialTabIndex = 0;

  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(
      initialIndex: initialTabIndex,
      length: 2,
      vsync: this,
    );
    tabController.addListener(() {
      if (tabController.indexIsChanging) {
        // onTabSelected(tabs[tabController.index]);
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  bool get expenses => tabController.index == 0;

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
                    context.localization.homePeriod,
                    style: AppTextStyle.appButton1.copyWith(
                      color: context.colors.mainText,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onPressed: () async {
                    await customRangePicker(
                      context,
                      context.read<ExpensesBloc>(),
                    );
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
    ExpensesBloc expensesBloc,
  ) {
    return showModalBottomSheet(
      context: context,
      useRootNavigator: true,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (context) => Material(
        child: CustomCalendar(
          onDateTimeChanged: (start, end) {
            AbstractFinanceRepository.transactionFilter = TransactionFilter(
              start: start,
              end: end,
            );
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
