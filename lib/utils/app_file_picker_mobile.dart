import 'dart:io';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:finance_app/domain/entity/bank_enum.dart';

class AppFilePickerMobile {
  Future<(Uint8List?, String?)> selectFile(Bank bank) async {
    final result = await FilePicker.platform.pickFiles(
      allowedExtensions: [bank.ext],
      type: FileType.custom,
    );

    if (result != null) {
      final fileResult = result.files.single;
      final file = File(fileResult.path ?? '');
      final fileName = fileResult.name;

      return (file.readAsBytesSync(), fileName);
    } else {
      return (null, null);
    }
  }
}
