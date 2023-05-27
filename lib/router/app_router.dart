import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'abstract_routes_info.dart';
import 'mobile_routes_info.dart';
import 'web_routes_info.dart';

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
