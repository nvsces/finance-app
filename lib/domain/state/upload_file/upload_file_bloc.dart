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
    on<CreateUploadFileEvent>(_create);
    on<InitUploadFileEvent>(_init);
    on<SelectUploadFileEvent>(_select);
    on<SetWalletIdUploadFileEvent>(_setWalletId);
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

  Future<void> _select(
    SelectUploadFileEvent event,
    Emitter<UploadFileState> emit,
  ) async {
    emit(
      state.copyWith(
        currentBank: event.index,
      ),
    );
  }

  Future<void> _create(
    CreateUploadFileEvent event,
    Emitter<UploadFileState> emit,
  ) async {
    if (state.walletId == null) return;
    final bank = state.bankList[state.currentBank];
    final (fileBytes, filename) = await AppFilePicker.selectFile(bank);

    if (fileBytes == null) {
      emit(state.copyWith(result: const UploadFileResult.failure()));
      return;
    }
    emit(state.copyWith(isLoading: true));

    final result = await apiHandler.uploadFile(
      fileBytes,
      bank,
      state.walletId!,
    );
    if (result == true) {
      emit(
        state.copyWith(
          result: const UploadFileResult.success(),
          isLoading: false,
          fileName: filename ?? '',
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
