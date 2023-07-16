part of 'upload_file_bloc.dart';

@freezed
class UploadFileState with _$UploadFileState {
  const factory UploadFileState({
    required bool isLoading,
    required UploadFileResult result,
    required List<Bank> bankList,
    required int currentBank,
    required String fileName,
  }) = _UploadFileState;

  factory UploadFileState.initial() => const UploadFileState(
      isLoading: false,
      result: UploadFileResult.empty(),
      bankList: [],
      currentBank: -1,
      fileName: '',);
}

@freezed
class UploadFileResult with _$UploadFileResult {
  const UploadFileResult._();

  const factory UploadFileResult.empty() = EmptyUploadFileState;

  const factory UploadFileResult.success() = SuccessUploadFileState;

  const factory UploadFileResult.failure() = FailureUploadFileState;
}

extension UploadFileStateExt on UploadFileState {
  bool get isSelected => currentBank != -1;
}
