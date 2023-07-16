import 'package:finance_app/extensions/build_context_ext.dart';
import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.colors.mainElement,
        elevation: 0,
      ),
      drawer: DrawerWidget(),
    );
  }
}
