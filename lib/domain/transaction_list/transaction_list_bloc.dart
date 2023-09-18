import 'package:finance_app/data/models/transaction.dart';
import 'package:finance_app/data/repositiries/finance/finance_repositiry.dart';
import 'package:finance_app/extensions/date_time_ext.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_list_bloc.freezed.dart';

@freezed
class TransactionListEvent with _$TransactionListEvent {
  const TransactionListEvent._();

  const factory TransactionListEvent.read() = ReadTransactionListEvent;
}

@freezed
class TransactionListState with _$TransactionListState {
  const factory TransactionListState({
    required Map<DateTime, List<Transaction>> transactions,
    required bool isLoading,
  }) = _TransactionListState;
}

class TransactionListBloc
    extends Bloc<TransactionListEvent, TransactionListState> {
  final AbstractFinanceRepository financeRepository;
  TransactionListBloc(this.financeRepository)
      : super(const TransactionListState(transactions: {}, isLoading: true)) {
    on<ReadTransactionListEvent>(_read);
  }

  Future<void> _read(
    ReadTransactionListEvent event,
    Emitter<TransactionListState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final transactions = await financeRepository.getTransactions(null, null);
    final result = getTransactionGroup(transactions);
    emit(state.copyWith(transactions: result, isLoading: false));
  }

  Map<DateTime, List<Transaction>> getTransactionGroup(
      List<Transaction> transactions) {
    final result = <DateTime, List<Transaction>>{};

    for (final item in transactions) {
      final DateTime time =
          DateTime.fromMillisecondsSinceEpoch(item.date).startOfDay;
      if (result[time] != null) {
        result[time]?.add(item);
      } else {
        result[time] = <Transaction>[item];
      }
    }
    return result;
  }
}
