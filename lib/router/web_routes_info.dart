import 'package:finance_app/router/web_routes.dart';
import 'package:finance_app/ui/web/widgets/top_nav_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../ui/web/pages/expenses_web_page.dart';
import '../ui/web/pages/income_web_page.dart';
import 'abstract_routes_info.dart';

class WebRoutesInfo implements AbstractRoutesInfo {
  final GlobalKey<NavigatorState> _shellNavigatorKey =
      GlobalKey<NavigatorState>();

  @override
  String get initialRoute => WebRoutes.expenses.path;

  @override
  List<RouteBase> get routes => <RouteBase>[
        ShellRoute(
          navigatorKey: _shellNavigatorKey,
          builder: (context, state, child) {
            return TopNavScaffold(
              child: child,
            ); //base scaffold for tabbed page
          },
          routes: [
            _addTabRoute(WebRoutes.income, const IncomeWebPage()),
            _addTabRoute(WebRoutes.expenses, const ExpensesWebPage()),
          ],
        ),
      ];

  GoRoute _addTabRoute(
    WebRoutes route,
    Widget page, {
    List<RouteBase> routes = const <RouteBase>[],
  }) {
    return GoRoute(
      path: route.path,
      name: route.name,
      pageBuilder: (context, state) => NoTransitionPage<Widget>(
        child: page,
      ),
      routes: routes,
    );
  }
}
