import 'package:finance_app/data/models/transaction.dart';

abstract class AbstractFinanceRepository {
  Future<List<Transaction>> getExpenses();
}
