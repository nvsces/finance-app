import 'package:go_router/go_router.dart';

abstract class AbstractRoutesInfo {
  String get initialRoute;

  List<RouteBase> get routes;
}
