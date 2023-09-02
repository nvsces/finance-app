import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_wallet_bloc.freezed.dart';

@freezed
class FilterWalletEvent with _$FilterWalletEvent {
  const FilterWalletEvent._();

  const factory FilterWalletEvent.setWalletId(int? walletId) =
      SetWalletIdFilterWalletEvent;
}

@freezed
class FilterWalletState with _$FilterWalletState {
  const factory FilterWalletState({
    int? walletId,
  }) = _FilterWalletState;

  factory FilterWalletState.initial() => const FilterWalletState();
}

class FilterWalletBloc extends Bloc<FilterWalletEvent, FilterWalletState> {
  FilterWalletBloc() : super(const FilterWalletState()) {
    on<SetWalletIdFilterWalletEvent>(_setWalletId);
  }

  Future<void> _setWalletId(
    SetWalletIdFilterWalletEvent event,
    Emitter<FilterWalletState> emit,
  ) async {
    emit(state.copyWith(walletId: event.walletId));
  }
}
