import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:finance_app/data/api/api_handler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_file_bloc.freezed.dart';
part 'upload_file_event.dart';
part 'upload_file_state.dart';

class UploadFileBloc extends Bloc<UploadFileEvent, UploadFileState> {
  final ApiHandler apiHandler;
  UploadFileBloc(this.apiHandler) : super(const InitialUploadFileState()) {
    on<CreateUploadFileEvent>(_create);
  }
  Future<void> _create(
      CreateUploadFileEvent event, Emitter<UploadFileState> emit) async {
    final file = await selectFile();
    if (file == null) {
      emit(const UploadFileState.failure());
      return;
    }
    emit(const UploadFileState.loading());
    final result = await apiHandler.uploadFile(file);
    if (result == true) {
      emit(const UploadFileState.success());
    } else {
      emit(const UploadFileState.failure());
    }
  }

  Future<File?> selectFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      final path = result.files.single.path;
      if (path == null) return null;
      return File(path);
    } else {
      return null;
    }
  }
}
