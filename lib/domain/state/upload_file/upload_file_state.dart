part of 'upload_file_bloc.dart';

@freezed
class UploadFileState with _$UploadFileState {
  const UploadFileState._();

  const factory UploadFileState.initial() = InitialUploadFileState;

  const factory UploadFileState.loading() = LoadingUploadFileState;

  const factory UploadFileState.success() = SuccessUploadFileState;

  const factory UploadFileState.failure() = FailureUploadFileState;
}
