import 'package:finance_app/data/models/transaction.dart';

abstract class TransactionRepository {
  Future<bool> edit({required Transaction transaction});
}
