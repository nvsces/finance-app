import 'package:finance_app/extensions/build_context_ext.dart';
import 'package:finance_app/ui/theme/app_colors.dart';
import 'package:finance_app/ui/theme/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:finance_app/extensions/build_context_ext.dart';

import '../../../data/models/subscription/subscription.dart';
import '../../../domain/state/subscription/subscription_bloc.dart';

class EditSubPage extends StatelessWidget {
  EditSubPage({
    super.key,
  });

  final List<String> itemsVal = ['₽', '\$', '€'];
  final List<String> itemsPer = ['1 неделя', '1 месяц', '6 месяцев', '1 год'];
  final List<String> itemsNap = ['За 1 час', 'За 1 день', 'За 3 дня'];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubscriptionBloc, SubscriptionState>(
        builder: (context, state) {
      TextEditingController name = TextEditingController();
      TextEditingController cost = TextEditingController();
      TextEditingController date = TextEditingController();
      return Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: context.colors.grey,
            actions: [
              TextButton(
                onPressed: () {
                  var subscriptions = SubscriptionModel(
                    name: name.text,
                    cost: cost.text,
                    currency: itemsVal[0], // хз как
                    date: date.text,
                    period: itemsPer[0], // хз как
                    reminder: itemsNap[0], // хз как
                  );
                  context.read<SubscriptionBloc>().add(
                      SubscriptionEvent.create(subscriptions: subscriptions));
                  context.pop(context);
                },
                child: AppText(
                  text: 'Готово',
                  size: 16,
                  color: context.colors.white,
                  weight: 3,
                ),
              ),
            ],
            title: const AppText(text: 'Редактирование', size: 20),
            centerTitle: true,
          ),
          bottomNavigationBar: BottomAppBar(
            child: TextButton(
                onPressed: () {},
                child: AppText(
                  text: 'Удалить',
                  size: 16,
                  color: context.colors.red,
                  weight: 3,
                )),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 320,
              decoration: BoxDecoration(
                color: context.colors.grey,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, right: 20, left: 20, bottom: 10),
                child: Column(
                  children: [
                    SizedBox(
                      height: 48,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const AppText(text: 'Название', size: 15),
                          Expanded(
                              child: TextField(
                            controller: name,
                            decoration: const InputDecoration.collapsed(
                                hintText: 'Название платежа'),
                            textAlign: TextAlign.right,
                          ))
                        ],
                      ),
                    ),
                    const Divider(
                      height: 1,
                    ),
                    SizedBox(
                      height: 48,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const AppText(text: 'Стоимость подписки', size: 15),
                          Expanded(
                              child: TextField(
                            controller: cost,
                            decoration: const InputDecoration.collapsed(
                                hintText: 'Введите стоимость'),
                            textAlign: TextAlign.right,
                          ))
                        ],
                      ),
                    ),
                    const Divider(
                      height: 1,
                    ),
                    SizedBox(
                      height: 48,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const AppText(text: 'Валюта', size: 15),
                          Container(
                              margin: const EdgeInsets.only(right: 0),
                              child: DropdownDemo(itemsVal: itemsVal))
                        ],
                      ),
                    ),
                    const Divider(
                      height: 1,
                    ),
                    SizedBox(
                      height: 48,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const AppText(text: 'Следующая оплата', size: 15),
                          Expanded(
                              child: TextField(
                            controller: date,
                            decoration: const InputDecoration.collapsed(
                                hintText: 'Введите дату'),
                            textAlign: TextAlign.right,
                          ))
                        ],
                      ),
                    ),
                    const Divider(
                      height: 1,
                    ),
                    SizedBox(
                      height: 48,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const AppText(text: 'Периодичность', size: 15),
                          Container(
                              margin: const EdgeInsets.only(right: 0),
                              child: DropdownDemo(
                                itemsVal: itemsPer,
                              ))
                        ],
                      ),
                    ),
                    const Divider(
                      height: 1,
                    ),
                    SizedBox(
                      height: 48,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const AppText(text: 'Напоминание', size: 15),
                          Container(
                              margin: const EdgeInsets.only(right: 0),
                              child: DropdownDemo(
                                itemsVal: itemsNap,
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ));
    });
  }
}

class DropdownDemo extends StatefulWidget {
  const DropdownDemo({Key? key, required this.itemsVal}) : super(key: key);
  final List<String> itemsVal;
  @override
  State<DropdownDemo> createState() => _DropdownDemoState();
}

class _DropdownDemoState extends State<DropdownDemo> {
  String dropdownValue = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButton<String>(
          value: dropdownValue.isEmpty ? widget.itemsVal.first : dropdownValue,
          items: widget.itemsVal.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: const TextStyle(fontSize: 16),
              ),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
        ),
      ],
    );
  }
}
