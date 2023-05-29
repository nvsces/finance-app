import 'package:finance_app/resources/jpgs.dart';

enum Bank {
  sber,
  tinkoff,
}

extension BankExt on Bank {
  String get label {
    switch (this) {
      case Bank.sber:
        return 'Сбербанк';

      case Bank.tinkoff:
        return 'Тинькофф';
    }
  }

  String get uploadUrl {
    switch (this) {
      case Bank.sber:
        return '/upload_file_pdf/';

      case Bank.tinkoff:
        return '/upload_file_xls/';
    }
  }

  String get ext {
    switch (this) {
      case Bank.sber:
        return 'pdf';

      case Bank.tinkoff:
        return 'xls';
    }
  }

  JpgAsset get image {
    switch (this) {
      case Bank.sber:
        return Jpgs.icSber;

      case Bank.tinkoff:
        return Jpgs.icTinkoff;
    }
  }
}
