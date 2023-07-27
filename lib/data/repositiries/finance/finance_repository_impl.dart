import 'dart:math';

import 'package:finance_app/data/api/api_handler.dart';
import 'package:finance_app/data/models/transaction.dart';
import 'package:finance_app/data/models/wallet.dart';
import 'package:finance_app/data/repositiries/finance/finance_repositiry.dart';

class FinanceRepository implements AbstractFinanceRepository {
  final ApiHandler apiHandler;

  FinanceRepository(this.apiHandler);

  @override
  Future<List<Transaction>> getExpenses(DateTime? start, DateTime? end) async {
    return apiHandler.getExpenses(start, end);
  }

  @override
  Future<void> addWallet(Wallet wallet) {
    return apiHandler.createWallet(wallet);
  }
}
