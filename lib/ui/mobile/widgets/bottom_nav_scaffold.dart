import 'package:finance_app/resources/svgs.dart';
import 'package:finance_app/router/mobile_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../domain/state/auth/auth_bloc.dart';
import '../../theme/button/app_button.dart';
import '../../theme/app_colors.dart';
import '../../theme/app_text.dart';
import 'drawer.dart';

class BottomNavScaffold extends StatelessWidget {
  final Widget child;

  const BottomNavScaffold({
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
      appBar: AppBar(
        backgroundColor: AppColors.grey,
        elevation: 0,
      ),
      drawer: DrawerWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pushReplacement((MobileRoutes.upload.path));
        },
        backgroundColor: Colors.grey,
        child: const Icon(
          Icons.add,
          color: AppColors.white,
          size: 40,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: child,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(), //shape of notch
        notchMargin: 5,
        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          currentIndex: currentIndex < 0 ? 0 : currentIndex,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: currentTabItems
              .map((item) => buildTab(context, item))
              .toList(growable: false),
          onTap: (index) => _onTabTapped(
            context: context,
            item: currentTabItems[index],
            currentLocation: currentLocation,
          ),
        ),
      ),
    );
  }

  void _onTabTapped({
    required BuildContext context,
    required _BottomNavBarItem item,
    required String currentLocation,
  }) {
    context.goNamed(item.route.name);
  }

  BottomNavigationBarItem buildTab(
    BuildContext context,
    _BottomNavBarItem item,
  ) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        item.defaultIcon,
      ),
      activeIcon: SvgPicture.asset(
        item.selectedIcon,
      ),
      label: '', //cannot be null
    );
  }

  List<_BottomNavBarItem> tabItems() => [
        _BottomNavBarItem(
          route: MobileRoutes.expenses,
          defaultIcon: Svgs.icMenuExpensesDefault,
          selectedIcon: Svgs.icMenuExpensesSolid,
        ),
        _BottomNavBarItem(
          route: MobileRoutes.income,
          defaultIcon: Svgs.icMenuIncomeDefault,
          selectedIcon: Svgs.icMenuIncomeSolid,
        ),
      ];
}

class _BottomNavBarItem {
  final MobileRoutes route;
  final SvgAsset defaultIcon;
  final SvgAsset selectedIcon;

  _BottomNavBarItem({
    required this.route,
    required this.defaultIcon,
    required this.selectedIcon,
  });
}
