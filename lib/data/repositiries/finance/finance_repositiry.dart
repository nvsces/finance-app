import '../../models/cash_flow.dart';
import 'finance_repository_impl.dart';

class FinanceRepository {
  final FinanceRepositoryImpl _repositoryImpl = FinanceRepositoryImpl();
  Future<List<CashFlow>> getFinance() => _repositoryImpl.getExpenses();
}
