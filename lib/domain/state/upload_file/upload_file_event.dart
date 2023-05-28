part of 'upload_file_bloc.dart';

@freezed
class UploadFileEvent with _$UploadFileEvent {
  const UploadFileEvent._();

  const factory UploadFileEvent.create() = CreateUploadFileEvent;

  const factory UploadFileEvent.init() = InitUploadFileEvent;

   const factory UploadFileEvent.select({required int index}) = SelectUploadFileEvent;
}
