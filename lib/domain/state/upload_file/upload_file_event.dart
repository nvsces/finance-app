part of 'upload_file_bloc.dart';

@freezed
class UploadFileEvent with _$UploadFileEvent {
  const UploadFileEvent._();

  const factory UploadFileEvent.request() = RequestUploadFileEvent;

  const factory UploadFileEvent.init() = InitUploadFileEvent;

  const factory UploadFileEvent.selectBank({required int index}) =
      SelectBankUploadFileEvent;

  const factory UploadFileEvent.setWalletId({required int walletId}) =
      SetWalletIdUploadFileEvent;

  const factory UploadFileEvent.selectFile() = SelectFileUploadFileEvent;
}
