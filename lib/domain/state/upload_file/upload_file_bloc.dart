import 'dart:typed_data';

import 'package:finance_app/data/api/api_handler.dart';
import 'package:finance_app/domain/entity/bank_enum.dart';
import 'package:finance_app/utils/app_file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_file_bloc.freezed.dart';
part 'upload_file_event.dart';
part 'upload_file_state.dart';

class UploadFileBloc extends Bloc<UploadFileEvent, UploadFileState> {
  final ApiHandler apiHandler;
  UploadFileBloc(this.apiHandler) : super(UploadFileState.initial()) {
    on<RequestUploadFileEvent>(_reques);
    on<InitUploadFileEvent>(_init);
    on<SelectBankUploadFileEvent>(_selectBank);
    on<SetWalletIdUploadFileEvent>(_setWalletId);
    on<SelectFileUploadFileEvent>(_selectFile);
  }

  Future<void> _selectFile(
    SelectFileUploadFileEvent event,
    Emitter<UploadFileState> emit,
  ) async {
    final bank = state.bankList[state.currentBank];
    final (fileBytes, filename) = await AppFilePicker.selectFile(bank);
    if (filename != null) {
      emit(state.copyWith(fileBytes: fileBytes, fileName: filename));
    }
  }

  Future<void> _setWalletId(
    SetWalletIdUploadFileEvent event,
    Emitter<UploadFileState> emit,
  ) async {
    emit(state.copyWith(walletId: event.walletId));
  }

  Future<void> _init(
    InitUploadFileEvent event,
    Emitter<UploadFileState> emit,
  ) async {
    emit(state.copyWith(bankList: supportedBanks));
  }

  Future<void> _selectBank(
    SelectBankUploadFileEvent event,
    Emitter<UploadFileState> emit,
  ) async {
    emit(
      state.copyWith(
        currentBank: event.index,
      ),
    );
  }

  Future<void> _reques(
    RequestUploadFileEvent event,
    Emitter<UploadFileState> emit,
  ) async {
    if (state.fileBytes == null || state.walletId == null) {
      emit(state.copyWith(result: const UploadFileResult.failure()));
      return;
    }

    final fileBytes = state.fileBytes!;

    emit(state.copyWith(isLoading: true));

    final result = await apiHandler
        .uploadFile(
      fileBytes,
      state.bankList[state.currentBank],
      state.walletId!,
    )
        .onError((error, stackTrace) {
      emit(
        state.copyWith(
          result: const UploadFileResult.failure(),
          isLoading: false,
        ),
      );
      return true;
    });
    if (result == true) {
      emit(
        state.copyWith(
          result: const UploadFileResult.success(),
          isLoading: false,
        ),
      );
    } else {
      emit(
        state.copyWith(
          result: const UploadFileResult.failure(),
          isLoading: false,
        ),
      );
    }
  }
}

final supportedBanks = <Bank>[Bank.sber, Bank.tinkoff];
