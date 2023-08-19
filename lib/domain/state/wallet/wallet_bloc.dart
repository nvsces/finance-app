import 'package:finance_app/data/models/wallet.dart';
import 'package:finance_app/data/repositiries/wallet/wallet_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_bloc.freezed.dart';

@freezed
class WalletEvent with _$WalletEvent {
  const WalletEvent._();

  const factory WalletEvent.read() = ReadWalletEvent;
}

@freezed
class WalletState with _$WalletState {
  const factory WalletState({
    required List<Wallet> wallets,
    required bool isLoading,
  }) = _WalletState;

  factory WalletState.initial() =>
      const WalletState(isLoading: false, wallets: []);
}

class WalletBloc extends Bloc<WalletEvent, WalletState> {
  final WalletRepository walletRepository;

  WalletBloc(this.walletRepository) : super(WalletState.initial()) {
    on<ReadWalletEvent>(_read);
  }

  Future<void> _read(ReadWalletEvent event, Emitter<WalletState> emit) async {
    final wallets = await walletRepository.getWallets();

    emit(state.copyWith(wallets: wallets, isLoading: false));
  }
}
