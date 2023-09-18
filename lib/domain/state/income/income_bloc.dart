import 'package:finance_app/data/models/transaction.dart';
import 'package:finance_app/data/repositiries/finance/finance_repositiry.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'income_bloc.freezed.dart';

@freezed
class IncomeEvent with _$IncomeEvent {
  const IncomeEvent._();

  const factory IncomeEvent.load() = LoadIncomeEvent;
  const factory IncomeEvent.setWalletId(int? walletId) = SetWalletIdIncomeEvent;
}

@freezed
class IncomeState with _$IncomeState {
  const factory IncomeState({
    required List<Transaction> transactions,
    required bool isLoading,
    int? walletId,
  }) = _IncomeState;

  factory IncomeState.initial() => const IncomeState(
        isLoading: true,
        transactions: [],
      );
}

class IncomeBloc extends Bloc<IncomeEvent, IncomeState> {
  final AbstractFinanceRepository financeRepository;
  IncomeBloc(this.financeRepository) : super(IncomeState.initial()) {
    on<LoadIncomeEvent>(_load);
    on<SetWalletIdIncomeEvent>(_setWalletId);
  }

  Future<void> _setWalletId(
    SetWalletIdIncomeEvent event,
    Emitter<IncomeState> emit,
  ) async {
    emit(state.copyWith(walletId: event.walletId));
    add(const LoadIncomeEvent());
  }

  Future<void> _load(
    LoadIncomeEvent event,
    Emitter<IncomeState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    int page = 0;
    final filter = AbstractFinanceRepository.transactionFilter;
    final allTransactions = <Transaction>[];
    final transactions = await financeRepository.getTransactions(
      filter.start,
      filter.end,
      type: 'income',
      walletId: state.walletId,
      page: page,
    );
    var count = transactions.length;
    allTransactions.addAll(transactions);
    page++;
    while (count == 200) {
      final tempTransactions = await financeRepository.getTransactions(
        filter.start,
        filter.end,
        type: 'income',
        walletId: state.walletId,
        page: page,
      );
      allTransactions.addAll(tempTransactions);
      count = tempTransactions.length;
      page++;
    }
    emit(state.copyWith(transactions: transactions, isLoading: false));
  }
}
