import 'package:finance_app/data/models/wallet.dart';

abstract class WalletRepository {
  Future<List<Wallet>> getWallets();

  Future<void> createWallet(Wallet wallet);
}
