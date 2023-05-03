import 'package:finance_app/ui/mobile/pages/expenses_page.dart';
import 'package:finance_app/ui/mobile/pages/main_page.dart';
import 'package:finance_app/ui/mobile/pages/profit_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../ui/mobile/pages/upload_page.dart';
import 'abstract_routes_info.dart';
import 'mobile_routes.dart';

class MobileRoutesInfo implements AbstractRoutesInfo {
  final GlobalKey<NavigatorState> _shellNavigatorKey = GlobalKey();

  @override
  String get initialRoute => MobileRoutes.profit.path;

  @override
  List<RouteBase> get routes => [
        ShellRoute(
          navigatorKey: _shellNavigatorKey,
          builder: (context, state, child) {
            return MainPage(child: child);
          },
          routes: [
            GoRoute(
              path: MobileRoutes.profit.path,
              name: MobileRoutes.profit.name,
              builder: (context, state) => ProfitPage(),
            ),
            GoRoute(
              path: MobileRoutes.expenses.path,
              name: MobileRoutes.expenses.name,
              builder: (context, state) => ExpensesPage(),
            ),
          ],
        ),
        GoRoute(
          path: MobileRoutes.upload.path,
          name: MobileRoutes.upload.name,
          builder: (context, state) => UploadPage(),
        ),
      ];
}
