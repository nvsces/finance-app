import 'package:finance_app/extensions/build_context_ext.dart';
import 'package:finance_app/ui/mobile/widgets/drawer.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.colors.mainElement,
        elevation: 0,
      ),
      drawer: const DrawerWidget(),
    );
  }
}
