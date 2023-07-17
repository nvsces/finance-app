import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_wallet_bloc.freezed.dart';

@freezed
class CreateWalletEvent with _$CreateWalletEvent {
  const CreateWalletEvent._();

  const factory CreateWalletEvent.updateTitle(String value) =
      UpdateTitleWalletEvent;

  const factory CreateWalletEvent.updateDiscription(String value) =
      UpdateDiscriptionWalletEvent;

  const factory CreateWalletEvent.updateBalance(String value) =
      UpdateBalanceWalletEvent;

  const factory CreateWalletEvent.updateCurrency(String value) =
      UpdateCurrencyWalletEvent;

  const factory CreateWalletEvent.saveWallet() = SaveWalletWalletEvent;
}

@freezed
class CreateWalletState with _$CreateWalletState {
  const factory CreateWalletState({
    required String title,
    required String discription,
    required String balance,
    required String currency,
  }) = _CreateWalletState;

  factory CreateWalletState.initial() => const CreateWalletState(
      title: '', discription: '', balance: '', currency: 'RUB');
}

class CreateWalletBloc extends Bloc<CreateWalletEvent, CreateWalletState> {
  CreateWalletBloc() : super(CreateWalletState.initial()) {
    on<UpdateTitleWalletEvent>(_upadateTitle);
    on<UpdateDiscriptionWalletEvent>(_updateDescription);
    on<UpdateBalanceWalletEvent>(_updateBalance);
    on<UpdateCurrencyWalletEvent>(_updateCurrency);
    on<SaveWalletWalletEvent>(_save);
  }
  Future<void> _upadateTitle(
      UpdateTitleWalletEvent event, Emitter<CreateWalletState> emit) async {
    final newState = state.copyWith(title: event.value);
    emit(newState);
  }

  Future<void> _updateDescription(UpdateDiscriptionWalletEvent event,
      Emitter<CreateWalletState> emit) async {
    emit(state.copyWith(discription: event.value));
  }

  Future<void> _updateBalance(
      UpdateBalanceWalletEvent event, Emitter<CreateWalletState> emit) async {
    emit(state.copyWith(balance: event.value));
  }

  Future<void> _updateCurrency(
      UpdateCurrencyWalletEvent event, Emitter<CreateWalletState> emit) async {
    emit(state.copyWith(currency: event.value));
  }

  Future<void> _save(
      SaveWalletWalletEvent event, Emitter<CreateWalletState> emit) async {
    final title = state.title;
    final des = state.discription;
    final balance = state.balance;
  }
}
