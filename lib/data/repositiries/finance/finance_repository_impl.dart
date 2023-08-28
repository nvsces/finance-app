import 'package:finance_app/data/api/api_handler.dart';
import 'package:finance_app/data/models/transaction.dart';
import 'package:finance_app/data/models/wallet.dart';
import 'package:finance_app/data/repositiries/finance/finance_repositiry.dart';

class FinanceRepository implements AbstractFinanceRepository {
  final ApiHandler apiHandler;

  FinanceRepository(this.apiHandler);

  @override
  Future<List<Transaction>> getTransactions(
    DateTime? start,
    DateTime? end, {
    String? type,
    String? walletId,
  }) async {
    return apiHandler.getTransactions(start, end, type, walletId);
  }

  @override
  Future<void> addWallet(Wallet wallet) {
    return apiHandler.createWallet(wallet);
  }
}
