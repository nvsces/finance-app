import 'package:finance_app/ui/mobile/pages/expenses_page.dart';
import 'package:finance_app/ui/mobile/pages/home_page.dart';
import 'package:finance_app/ui/mobile/pages/income__page.dart';
import 'package:finance_app/ui/mobile/pages/login_page.dart';
import 'package:finance_app/ui/mobile/widgets/bottom_nav_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../ui/mobile/pages/upload_file_page.dart';
import 'abstract_routes_info.dart';
import 'mobile_routes.dart';

class MobileRoutesInfo implements AbstractRoutesInfo {
  final GlobalKey<NavigatorState> _shellNavigatorKey =
      GlobalKey<NavigatorState>();

  @override
  String get initialRoute => MobileRoutes.login.path;

  @override
  List<RouteBase> get routes => <RouteBase>[
        GoRoute(
          path: MobileRoutes.home.path,
          name: MobileRoutes.home.name,
          builder: (context, state) => const HomePage(),
        ),
        GoRoute(
          path: MobileRoutes.upload.path,
          name: MobileRoutes.upload.name,
          builder: (context, state) => const UploadFilePage(),
        ),
        GoRoute(
          path: MobileRoutes.login.path,
          name: MobileRoutes.login.name,
          builder: (context, state) => const LoginPage(),
        ),
        ShellRoute(
          navigatorKey: _shellNavigatorKey,
          builder: (context, state, child) {
            return BottomNavScaffold(
              child: child,
            ); //base scaffold for tabbed page
          },
          routes: [
            _addTabRoute(MobileRoutes.income, const IncomePage()),
            _addTabRoute(MobileRoutes.expenses, const ExpensesPage()),
          ],
        ),
      ];

  GoRoute _addTabRoute(
    MobileRoutes route,
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
