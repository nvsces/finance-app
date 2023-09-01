part of 'expenses_bloc.dart';

@freezed
class ExpensesState with _$ExpensesState {
  const factory ExpensesState({
    required List<Transaction> transactions,
    required bool isLoading,
    int? walletId,
  }) = _ExpensesState;

  factory ExpensesState.initial() => const ExpensesState(
        transactions: [],
        isLoading: false,
      );
}
