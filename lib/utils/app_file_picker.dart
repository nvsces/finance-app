import 'package:finance_app/domain/entity/bank_enum.dart';

// ignore: unused_import
import 'package:finance_app/utils/app_file_picker.dart' // Stub implementation
    if (dart.library.io) 'package:finance_app/utils/app_file_picker_mobile.dart' // dart:io implementation
    if (dart.library.html) 'package:finance_app/utils/app_file_picker_web.dart';
import 'package:finance_app/utils/app_file_picker_mobile.dart';
import 'package:finance_app/utils/app_file_picker_web.dart';
import 'package:flutter/foundation.dart';

class AppFilePicker {
  AppFilePicker._();

  static Future<(Uint8List?, String?)> selectFile(Bank bank) {
    if (kIsWeb) return AppFilePickerWeb().selectFile(bank);

    return AppFilePickerMobile().selectFile(bank);
  }
}
