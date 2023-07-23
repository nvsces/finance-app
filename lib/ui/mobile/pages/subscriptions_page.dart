import 'package:finance_app/data/models/subscription/subscription.dart';
import 'package:finance_app/domain/state/subscription/subscription_bloc.dart';
import 'package:finance_app/extensions/build_context_ext.dart';
import 'package:finance_app/router/mobile_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../theme/app_text.dart';

class SubscriptionsPage extends StatelessWidget {
  const SubscriptionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubscriptionBloc, SubscriptionState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: const AppText(text: 'Подписки', size: 20),
            leading: IconButton(
                onPressed: () {
                  context.go(MobileRoutes.home.path);
                },
                icon: Icon(Icons.arrow_back)),
            centerTitle: true,
            backgroundColor: context.colors.grey,
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              context.push(MobileRoutes.editSub.path);
            },
            backgroundColor: Colors.grey,
            child: Icon(
              Icons.add,
              color: context.colors.white,
              size: 40,
            ),
          ),
          body: SubscriptionsList(subscriptionList: state.subscriptions),
        );
      },
    );
  }
}

class SubscriptionsList extends StatelessWidget {
  const SubscriptionsList({
    super.key,
    required this.subscriptionList,
  });

  final List<SubscriptionModel> subscriptionList;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: subscriptionList.length,
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
                context.read<SubscriptionBloc>().add(SubscriptionEvent.edit(
                    subscriptions: SubscriptionModel(
                        name: subscriptionList[index].name,
                        cost: subscriptionList[index].cost,
                        currency: subscriptionList[index].currency,
                        date: subscriptionList[index].date,
                        period: subscriptionList[index].period,
                        reminder: subscriptionList[index].reminder)));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: context.colors.grey,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                height: 100,
                width: double.infinity,
                child: Column(children: [
                  const SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    title: Text(subscriptionList[index].name),
                    trailing: Text(
                        '${subscriptionList[index].cost} ${subscriptionList[index].currency}'),
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
                            Text('Оплата - ${subscriptionList[index].date}'),
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
                            Text(
                                'Напоминание - ${subscriptionList[index].reminder}'),
                          ],
                        )
                      ],
                    ),
                  ),
                ]),
              ),
            ),
          );
        });
  }
}
