import 'package:finance_app/domain/state/wallet/wallet_bloc.dart';
import 'package:finance_app/extensions/build_context_ext.dart';
import 'package:finance_app/resources/svgs.dart';
import 'package:finance_app/router/mobile_routes.dart';
import 'package:finance_app/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    final currentTabItems = tabItems(context);
    final currentIndex = currentTabItems
        .indexWhere((element) => element.route.path == currentLocation);

    return BlocBuilder<WalletBloc, WalletState>(
      builder: (context, state) {
        return Scaffold(
          extendBody: true,
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: state.wallets.isNotEmpty
              ? Container(
                  decoration: BoxDecoration(
                    color: context.colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: FloatingActionButton(
                        elevation: 0.0,
                        onPressed: () {
                          context.push(MobileRoutes.upload.path);
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
                )
              : null,
          body: SafeArea(child: child),
          bottomNavigationBar: BottomAppBar(
            clipBehavior: Clip.antiAlias,
            notchMargin: 2.0,
            shape: const CircularNotchedRectangle(),
            // color: Theme.of(context).primaryColor.withAlpha(255),
            elevation: 0,
            child: BottomNavigationBar(
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
          ),
        );
      },
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
      icon: Column(
        children: [
          SvgPicture.asset(
            item.defaultIcon,
          ),
          Text(
            item.name,
            style: AppTextStyle.appButton1
                .copyWith(color: context.colors.mainElement, fontSize: 8),
          ),
        ],
      ),
      activeIcon: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            height: 56,
            width: 56,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.5),
              color: context.colors.mainElement,
            ),
          ),
          Column(
            children: [
              SvgPicture.asset(
                item.selectedIcon,
              ),
              Text(
                item.name,
                style: AppTextStyle.appButton1
                    .copyWith(color: context.colors.white, fontSize: 8),
              ),
            ],
          ),
        ],
      ),

      label: '', //cannot be null
    );
  }

  List<_BottomNavBarItem> tabItems(BuildContext context) => [
        _BottomNavBarItem(
            route: MobileRoutes.home,
            defaultIcon: Svgs.icMenuHomeDefault,
            selectedIcon: Svgs.icMenuHomeSolid,
            name: context.localization.menuHome),
        _BottomNavBarItem(
            route: MobileRoutes.transaction,
            defaultIcon: Svgs.icMenuTransactionDefault,
            selectedIcon: Svgs.icMenuTransactionSolid,
            name: context.localization.menuTransaction),
        _BottomNavBarItem(
            route: MobileRoutes.home,
            defaultIcon: Svgs.icMenuGoalsDefault,
            selectedIcon: Svgs.icMenuGoalsSolid,
            name: context.localization.menuGoals),
        _BottomNavBarItem(
            route: MobileRoutes.account,
            defaultIcon: Svgs.icMenuAccountDefault,
            selectedIcon: Svgs.icMenuAccountSolid,
            name: context.localization.menuAccount),
      ];
}

class _BottomNavBarItem {
  final MobileRoutes route;
  final SvgAsset defaultIcon;
  final SvgAsset selectedIcon;
  final String name;

  _BottomNavBarItem({
    required this.route,
    required this.defaultIcon,
    required this.selectedIcon,
    required this.name,
  });
}
