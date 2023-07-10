import 'dart:io';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:finance_app/domain/entity/bank_enum.dart';

class AppFilePickerMobile {
  Future<Uint8List?> selectFile(Bank bank) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowedExtensions: [bank.ext],
      type: FileType.custom,
    );

    if (result != null) {
      final fileResult = result.files.single;
      final file = File(fileResult.path ?? '');
      return file.readAsBytesSync();
    } else {
      return null;
    }
  }
}
