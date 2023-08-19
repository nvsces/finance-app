import 'package:finance_app/data/api/api_handler.dart';
import 'package:finance_app/data/models/wallet.dart';
import 'package:finance_app/data/repositiries/wallet/wallet_repository.dart';

class WalletRepositoryImpl implements WalletRepository {
  final ApiHandler apiHandler;

  WalletRepositoryImpl(this.apiHandler);

  @override
  Future<void> createWallet(Wallet wallet) {
    return apiHandler.createWallet(wallet);
  }

  @override
  Future<List<Wallet>> getWallets() {
    return apiHandler.fetchWallets();
  }
}
