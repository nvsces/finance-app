
import 'package:finance_app/router/abstract_routes_info.dart';
import 'package:finance_app/router/mobile_routes_info.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GlobalKey<NavigatorState> rootNavigatorKey =
      GlobalKey<NavigatorState>();

  GoRouter router() {
    final AbstractRoutesInfo routesInfo = MobileRoutesInfo();
    // kIsWeb ? WebRoutesInfo() : MobileRoutesInfo();
    return GoRouter(
      navigatorKey: rootNavigatorKey,
      routes: routesInfo.routes,
      initialLocation: routesInfo.initialRoute,
    );
  }
}
