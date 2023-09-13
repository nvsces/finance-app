import 'package:bloc/bloc.dart';
import 'package:finance_app/data/models/transaction.dart';
import 'package:finance_app/data/repositiries/transaction/transaction_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_transaction_bloc.freezed.dart';

@freezed
class CategoryTransactionEvent with _$CategoryTransactionEvent {
  const CategoryTransactionEvent._();

  const factory CategoryTransactionEvent.disabled(Transaction tr) =
      DisabledCategoryTransactionEvent;

  const factory CategoryTransactionEvent.addComment({
    required Transaction tr,
    required String comment,
  }) = AddCommentCategoryTransactionEvent;

  const factory CategoryTransactionEvent.init(List<Transaction> transactions) =
      InitCategoryTransactionEvent;
}

@freezed
class CategoryTransactionState with _$CategoryTransactionState {
  const factory CategoryTransactionState({
    required List<Transaction> transactions,
  }) = _CategoryTransactionState;

  factory CategoryTransactionState.initial() =>
      const CategoryTransactionState(transactions: []);
}

class CategoryTransactionBloc
    extends Bloc<CategoryTransactionEvent, CategoryTransactionState> {
  final TransactionRepository transactionRepository;
  CategoryTransactionBloc(this.transactionRepository)
      : super(CategoryTransactionState.initial()) {
    on<DisabledCategoryTransactionEvent>(_disabled);
    on<AddCommentCategoryTransactionEvent>(_addComment);
    on<InitCategoryTransactionEvent>(_init);
  }
  Future<void> _disabled(
    DisabledCategoryTransactionEvent event,
    Emitter<CategoryTransactionState> emit,
  ) async {
    final transactions = List.of(state.transactions);

    final newTransaction = event.tr.copyWith(enabled: false);
    final result =
        await transactionRepository.edit(transaction: newTransaction);

    // if (result) {
    transactions.remove(event.tr);
    emit(state.copyWith(transactions: transactions));
    // }
  }

  Future<void> _addComment(
    AddCommentCategoryTransactionEvent event,
    Emitter<CategoryTransactionState> emit,
  ) async {
    final transactions = List.of(state.transactions);

    final newTransaction = event.tr.copyWith(enabled: false);
    final result =
        await transactionRepository.edit(transaction: newTransaction);

    // if (result) {
    final iUpdateTr = transactions.indexOf(event.tr);
    if (iUpdateTr > -1) {
      transactions[iUpdateTr] = newTransaction;
      // }
      emit(state.copyWith(transactions: transactions));
    }
  }

  Future<void> _init(
    InitCategoryTransactionEvent event,
    Emitter<CategoryTransactionState> emit,
  ) async {
    emit(state.copyWith(transactions: event.transactions));
  }
}
