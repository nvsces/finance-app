import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:finance_app/data/api/api_handler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../entity/bank_enum.dart';

part 'upload_file_bloc.freezed.dart';
part 'upload_file_event.dart';
part 'upload_file_state.dart';

class UploadFileBloc extends Bloc<UploadFileEvent, UploadFileState> {
  final ApiHandler apiHandler;
  UploadFileBloc(this.apiHandler) : super(UploadFileState.initial()) {
    on<CreateUploadFileEvent>(_create);
    on<InitUploadFileEvent>(_init);
    on<SelectUploadFileEvent>(_select);
    
  }
Future<void> _init(
      InitUploadFileEvent event, Emitter<UploadFileState> emit) async {
        emit(state.copyWith(bankList: supportedBanks));
      }

      Future<void> _select(
      SelectUploadFileEvent event, Emitter<UploadFileState> emit) async {
        emit(state.copyWith(currentBank: event.index));
      }

  Future<void> _create(
      CreateUploadFileEvent event, Emitter<UploadFileState> emit) async {
    final fileBytes = await selectFile();
    if (fileBytes == null) {
      emit(state.copyWith(result: UploadFileResult.failure()));
      return;
    }
    emit(state.copyWith(isLoading: true));
    final result = await apiHandler.uploadFile(fileBytes);
    if (result == true) {
      emit(state.copyWith(result: UploadFileResult.success(), isLoading: false));
    } else {
      emit(state.copyWith(result: UploadFileResult.failure(), isLoading: false));
    }
  }

  Future<Uint8List?> selectFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      final file = result.files.single;
      return file.bytes;
    } else {
      return null;
    }
  }
}


final supportedBanks = <Banks>[Banks.sber, Banks.tinkoff];