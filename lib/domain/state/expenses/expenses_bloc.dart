import 'package:finance_app/data/models/transaction.dart';
import 'package:finance_app/data/repositiries/finance/finance_repositiry.dart';
import 'package:finance_app/domain/entity/transaction_filter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'expenses_bloc.freezed.dart';
part 'expenses_event.dart';
part 'expenses_state.dart';

class ExpensesBloc extends Bloc<ExpensesEvent, ExpensesState> {
  final AbstractFinanceRepository financeRepository;

  ExpensesBloc(this.financeRepository) : super(ExpensesState.initial()) {
    on<LoadExpensesEvent>(_load);
    on<SetFilterExpensesEvent>(_setFilter);
  }
  Future<void> _setFilter(
    SetFilterExpensesEvent event,
    Emitter<ExpensesState> emit,
  ) async {
    emit(
      state.copyWith(
        filter: event.filter,
      ),
    );
    AbstractFinanceRepository.transactionFilter = event.filter;
    add(const LoadExpensesEvent());
  }

  Future<void> _load(
    LoadExpensesEvent event,
    Emitter<ExpensesState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final filter = AbstractFinanceRepository.transactionFilter;
    final transactions = await financeRepository.getExpenses(
      filter.start,
      filter.end,
    );
    emit(state.copyWith(transactions: transactions, isLoading: false));
  }
}
