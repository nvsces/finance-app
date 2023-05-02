import 'package:finance_app/ui/mobile/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'abstract_routes_info.dart';
import 'mobile_routes.dart';

class MobileRoutesInfo implements AbstractRoutesInfo {
  final GlobalKey<NavigatorState> _shellNavigatorKey =
      GlobalKey<NavigatorState>();

  @override
  String get initialRoute => MobileRoutes.home.path;

  @override
  List<RouteBase> get routes => <RouteBase>[
        GoRoute(
          path: MobileRoutes.home.path,
          name: MobileRoutes.home.name,
          builder: (context, state) => const HomePage(),
        ),
      ];
}
