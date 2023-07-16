// ignore: depend_on_referenced_packages
import 'package:collection/collection.dart';

enum WebRoutes {
  expenses,
  income;

  static WebRoutes? fromName(String? name) {
    return WebRoutes.values.firstWhereOrNull(
      (WebRoutes element) => element.name == name,
    );
  }
}

extension WebRoutesExt on WebRoutes {
  String get path => '/$name';
}
