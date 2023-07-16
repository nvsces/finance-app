import 'package:finance_app/ui/theme/app_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension BuildContextExt on BuildContext {
  AppLocalizations get localization => AppLocalizations.of(this)!;

  AppColorScheme get colors {
    return Theme.of(this).extension<AppColorScheme>()!;
  }
}
