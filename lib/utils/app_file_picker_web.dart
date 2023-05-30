import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:finance_app/domain/entity/bank_enum.dart';

class AppFilePickerWeb {
  Future<Uint8List?> selectFile(Bank bank) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowedExtensions: [bank.ext],
      type: FileType.custom,
    );

    if (result != null) {
      final file = result.files.single;
      return file.bytes;
    } else {
      return null;
    }
  }
}
