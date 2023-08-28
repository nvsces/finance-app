import 'package:finance_app/data/models/transaction.dart';
import 'package:finance_app/data/repositiries/finance/finance_repositiry.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'expenses_bloc.freezed.dart';
part 'expenses_event.dart';
part 'expenses_state.dart';

class ExpensesBloc extends Bloc<ExpensesEvent, ExpensesState> {
  final AbstractFinanceRepository financeRepository;

  ExpensesBloc(this.financeRepository) : super(ExpensesState.initial()) {
    on<LoadExpensesEvent>(_load);
    on<SetWalletIdExpensesEvent>(_setWalletId);
  }
  Future<void> _setWalletId(
    SetWalletIdExpensesEvent event,
    Emitter<ExpensesState> emit,
  ) async {
    emit(state.copyWith(walletId: event.walletId));
    add(const LoadExpensesEvent());
  }

  Future<void> _load(
    LoadExpensesEvent event,
    Emitter<ExpensesState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final filter = AbstractFinanceRepository.transactionFilter;
    final transactions = await financeRepository.getTransactions(
      filter.start,
      filter.end,
      type: 'expenses',
      walletId: state.walletId,
    );
    emit(state.copyWith(transactions: transactions, isLoading: false));
  }
}
