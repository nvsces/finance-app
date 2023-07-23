import 'package:finance_app/domain/state/auth/auth_bloc.dart';
import 'package:finance_app/extensions/build_context_ext.dart';
import 'package:finance_app/router/mobile_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';


class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: const CircleAvatar(),
            accountEmail: const Text('@An_00000'),
            accountName: const Text(
              'Anatoliy',
              style: TextStyle(fontSize: 24.0),
            ),
            decoration: BoxDecoration(
              color: context.colors.black,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.bookmark),
            title: const Text(
              'Подписки',
              style: TextStyle(fontSize: 16.0),
            ),
            onTap: () {
              context.go(MobileRoutes.subscription.path);
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text(
              'Выйти',
              style: TextStyle(fontSize: 16.0),
            ),
            onTap: () {
              context.read<AuthBloc>().add(const AuthEvent.logout());
            },
          ),
        ],
      ),
    );
  }
}
