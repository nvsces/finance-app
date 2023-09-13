import 'package:finance_app/data/models/transaction.dart';
import 'package:finance_app/data/repositiries/transaction/transaction_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_bloc.freezed.dart';

part 'transaction_event.dart';
part 'transaction_state.dart';

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  final Transaction tr;
  final TransactionRepository transactionRepository;
  TransactionBloc(this.tr, this.transactionRepository)
      : super(TransactionState(transaction: tr)) {
    on<DisabledTransactionEvent>(_disabled);
    on<AddCommnetTransactionEvent>(_addComment);
  }

  Future<void> _disabled(
    DisabledTransactionEvent event,
    Emitter<TransactionState> emit,
  ) async {
    final newTransaction = state.transaction.copyWith(enabled: false);
    final result =
        await transactionRepository.edit(transaction: newTransaction);

    if (result) {
      emit(state.copyWith(transaction: newTransaction));
    }
  }

  Future<void> _addComment(
    AddCommnetTransactionEvent event,
    Emitter<TransactionState> emit,
  ) async {
    final newTransaction = state.transaction.copyWith(comment: event.comment);
    final result =
        await transactionRepository.edit(transaction: newTransaction);

    if (result) {
      emit(state.copyWith(transaction: newTransaction));
    }
  }

  @override
  Future<void> close() async {
    debugPrint('close bloc');
    super.close();
  }
}
