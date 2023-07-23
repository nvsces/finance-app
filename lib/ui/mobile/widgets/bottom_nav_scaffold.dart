import 'package:finance_app/extensions/build_context_ext.dart';
import 'package:finance_app/resources/svgs.dart';
import 'package:finance_app/router/mobile_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

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
      floatingActionButton: Container(
        decoration: BoxDecoration(
          color: context.colors.white,
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: FloatingActionButton(
            elevation: 0.0,
            onPressed: () {
              context.pushReplacement((MobileRoutes.createWalet.path));
            },
            backgroundColor: context.colors.mainElement,
            child: Icon(
              Icons.add,
              color: context.colors.white,
              size: 40,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: context.colors.navigationAndPanels,
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
      activeIcon: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            height: 56,
            width: 56,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.5),
                color: context.colors.mainElement),
          ),
          SvgPicture.asset(
            item.selectedIcon,
          ),
        ],
      ),

      label: '', //cannot be null
    );
  }

  List<_BottomNavBarItem> tabItems() => [
        _BottomNavBarItem(
          route: MobileRoutes.home,
          defaultIcon: Svgs.icMenuHomeDefault,
          selectedIcon: Svgs.icMenuHomeSolid,
        ),
        _BottomNavBarItem(
          route: MobileRoutes.transaction,
          defaultIcon: Svgs.icMenuTransactionDefault,
          selectedIcon: Svgs.icMenuTransactionSolid,
        ),
        _BottomNavBarItem(
          route: MobileRoutes.account,
          defaultIcon: Svgs.icMenuAccountDefault,
          selectedIcon: Svgs.icMenuAccountSolid,
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
