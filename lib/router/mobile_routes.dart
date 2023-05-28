import 'package:collection/collection.dart';

enum MobileRoutes {
  auth,
  upload,
  login,
  expenses,
  income,
  home;

  static MobileRoutes? fromName(String? name) {
    return MobileRoutes.values.firstWhereOrNull(
      (MobileRoutes element) => element.name == name,
    );
  }
}

extension MobileRoutesExt on MobileRoutes {
  String get path => '/$name';
}
