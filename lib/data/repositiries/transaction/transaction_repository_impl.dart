import 'package:finance_app/data/api/api_handler.dart';
import 'package:finance_app/data/models/transaction.dart';
import 'package:finance_app/data/repositiries/transaction/transaction_repository.dart';

class TransactionRepositoryImpl implements TransactionRepository {
  final ApiHandler apiHandler;

  const TransactionRepositoryImpl(this.apiHandler);

  @override
  Future<bool> edit({required Transaction transaction}) async {
    return apiHandler.editTransaction(transaction);
  }
}
