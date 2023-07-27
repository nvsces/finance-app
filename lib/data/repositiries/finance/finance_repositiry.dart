import 'package:finance_app/data/models/transaction.dart';
import 'package:finance_app/data/models/wallet.dart';
import 'package:finance_app/domain/entity/transaction_filter.dart';

abstract class AbstractFinanceRepository {
  static TransactionFilter transactionFilter = const TransactionFilter();

  Future<List<Transaction>> getExpenses(DateTime? start, DateTime? end);

  Future<void> addWallet(Wallet wallet);
}
