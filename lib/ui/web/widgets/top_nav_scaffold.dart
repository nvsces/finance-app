import 'package:finance_app/router/web_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TopNavScaffold extends StatelessWidget {
  final Widget child;

  const TopNavScaffold({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final currentLocation = GoRouter.of(context).location;
    final currentTabItems = tabItems();
    final currentIndex = currentTabItems
        .indexWhere((element) => element.route.path == currentLocation);

    return Scaffold(
      body: Column(
        children: [
          _TopNavigationBar(
            currentIndex: currentIndex < 0 ? 0 : currentIndex,
            items: tabItems(),
          ),
          Expanded(child: child),
        ],
      ),
    );
  }

  List<_TopNavBarItem> tabItems() => const [
        _TopNavBarItem(
          route: WebRoutes.expenses,
          label: 'Расходы',
        ),
        _TopNavBarItem(
          route: WebRoutes.income,
          label: 'Доходы',
        ),
      ];
}

class _TopNavBarItem extends StatelessWidget {
  const _TopNavBarItem({
    required this.label,
    required this.route,
  });
  final String label;
  final WebRoutes route;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.goNamed(route.name);
      },
      child: Text(label),
    );
  }
}

class _TopNavigationBar extends StatelessWidget {
  const _TopNavigationBar({
    required this.currentIndex,
    required this.items,
  });
  final int currentIndex;
  final List<_TopNavBarItem> items;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: List.generate(items.length, (index) => items[index]),
    );
  }
}
