import 'package:finance_app/data/models/transaction.dart';
import 'package:finance_app/main.dart';
import 'package:finance_app/router/app_router.dart';
import 'package:finance_app/ui/mobile/pages/auth_page.dart';
import 'package:finance_app/ui/mobile/pages/detail_category_page.dart';
import 'package:finance_app/ui/mobile/pages/edit_sub_page.dart';
import 'package:finance_app/ui/mobile/pages/expenses_page.dart';
import 'package:finance_app/ui/mobile/pages/subscriptions_page.dart';
import 'package:finance_app/ui/mobile/pages/income__page.dart';
import 'package:finance_app/ui/mobile/pages/login_page.dart';
import 'package:finance_app/ui/mobile/widgets/bottom_nav_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../ui/mobile/pages/login_page.dart';
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
          path: MobileRoutes.login.path,
          name: MobileRoutes.login.name,
          builder: (context, state) => LoginPage(),
        ),
        GoRoute(
          path: MobileRoutes.subscription.path,
          name: MobileRoutes.subscription.name,
          builder: (context, state) => const SubscriptionsPage(),
        ),
        GoRoute(
          parentNavigatorKey: AppRouter.rootNavigatorKey,
          path: MobileRoutes.editSub.path,
          name: MobileRoutes.editSub.name,
          builder: (context, state) => EditSubPage(),
        ),
        GoRoute(
          parentNavigatorKey: AppRouter.rootNavigatorKey,
          path: MobileRoutes.upload.path,
          name: MobileRoutes.upload.name,
          builder: (context, state) => const UploadFilePage(),
        ),
        GoRoute(
          parentNavigatorKey: AppRouter.rootNavigatorKey,
          path: MobileRoutes.detailCategory.path,
          name: MobileRoutes.detailCategory.name,
          builder: (context, state) => DetailCategoryPage(
            transactions: state.extra as List<Transaction>,
          ),
        ),
        GoRoute(
            path: '${MobileRoutes.auth.path}/:code',
            name: MobileRoutes.auth.name,
            builder: (context, state) {
              print('GoRoute AuthPage');
              final code = state.pathParameters['code'];
              print(code);
              return AuthPage(
                code: state.pathParameters['code'] as String,
              );
            }),
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
