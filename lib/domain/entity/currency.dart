import 'package:finance_app/resources/svgs.dart';

enum Currency {
  rubles,
  usd,
  eur,
  gbr,
  jpy,
  cny
}

extension CurrencyExt on Currency {
  SvgAsset get icon => switch (this) {
        Currency.rubles => Svgs.iconRuble,
        Currency.usd => Svgs.iconUsd,
        Currency.eur => Svgs.iconEur,
        Currency.gbr => Svgs.iconGbr,
        Currency.jpy => Svgs.iconJenaYuan,
        Currency.cny => Svgs.iconJenaYuan,
      };

  String get title => switch (this) {
        Currency.rubles => 'RUB',
        Currency.usd => 'USD',
        Currency.eur => 'EUR',
        Currency.gbr => 'GBR',
        Currency.jpy => 'JPY',
        Currency.cny => 'CNY',
      };
}
