import 'package:finance_app/data/models/transaction.dart';
import 'package:finance_app/data/repositiries/finance/finance_repositiry.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'income_bloc.freezed.dart';

@freezed
class IncomeEvent with _$IncomeEvent {
  const IncomeEvent._();

  const factory IncomeEvent.load() = LoadIncomeEvent;
}

@freezed
class IncomeState with _$IncomeState {
  const factory IncomeState({
    required List<Transaction> transactions,
    required bool isLoading,
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
  }
  Future<void> _load(
    LoadIncomeEvent event,
    Emitter<IncomeState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final filter = AbstractFinanceRepository.transactionFilter;
    final transactions = await financeRepository.getTransactions(
      filter.start,
      filter.end,
      type: 'income',
    );
    emit(state.copyWith(transactions: transactions, isLoading: false));
  }
}
