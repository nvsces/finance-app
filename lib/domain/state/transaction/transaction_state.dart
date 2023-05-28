part of 'transaction_bloc.dart';

@freezed
class TransactionState with _$TransactionState {
  const factory TransactionState({
    required Transaction transaction,
  }) = _TransactionState;
}
