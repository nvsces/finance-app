import 'package:finance_app/router/mobile_routes.dart';
import 'package:finance_app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../theme/app_text.dart';

class SubscriptionsPage extends StatelessWidget {
  const SubscriptionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const AppText(text: 'Подписки', size: 20),
        leading: IconButton(
            onPressed: () {
              context.go(MobileRoutes.expenses.path);
            },
            icon: Icon(Icons.arrow_back)),
        centerTitle: true,
        backgroundColor: AppColors.grey,
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(
                top: 10,
                right: 15,
                left: 15,
              ),
              child: GestureDetector(
                onLongPress: () {
                  context.push(MobileRoutes.editSub.path);
                },
                child: Container(
                  decoration: const BoxDecoration(
                    color: AppColors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  height: 100,
                  width: double.infinity,
                  child: Column(children: [
                    const SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      title: Text('Яндекс Плюс'),
                      trailing: Text('1990 Р'),
                      subtitle: Column(
                        children: [
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.access_time,
                                size: 18,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('Оплата - 1 июня 2023 г'),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.notifications_none,
                                size: 20,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('Напоминание - За 3 дня'),
                            ],
                          )
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
            );
          }),
    );
  }
}
