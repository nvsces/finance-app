import 'package:finance_app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
        backgroundColor: AppColors.mainElement,
        elevation: 0,
      ),
      drawer: DrawerWidget(),);
  }
}