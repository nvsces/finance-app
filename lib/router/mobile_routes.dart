import 'package:collection/collection.dart';

enum MobileRoutes {
  editSub,
  detailCategory,
  auth,
  upload,
  login,
  expenses,
  income,
  subscription;

  static MobileRoutes? fromName(String? name) {
    return MobileRoutes.values.firstWhereOrNull(
      (MobileRoutes element) => element.name == name,
    );
  }
}

extension MobileRoutesExt on MobileRoutes {
  String get path => '/$name';
}
