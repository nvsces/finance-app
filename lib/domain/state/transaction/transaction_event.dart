part of 'transaction_bloc.dart';

@freezed
class TransactionEvent with _$TransactionEvent {
  const TransactionEvent._();

  const factory TransactionEvent.disabled() = DisabledTransactionEvent;

  const factory TransactionEvent.addComment({required String comment}) =
      AddCommnetTransactionEvent;
}
