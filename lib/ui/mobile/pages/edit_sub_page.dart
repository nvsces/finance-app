import 'package:finance_app/ui/theme/app_colors.dart';
import 'package:finance_app/ui/theme/app_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EditSubPage extends StatelessWidget {
  EditSubPage({super.key});

  final List<String> itemsVal = ['₽', '\$', '€'];
  final List<String> itemsPer = ['1 неделя', '1 месяц', '6 месяцев', '1 год'];
  final List<String> itemsNap = ['За 1 час', 'За 1 день', 'За 3 дня'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.grey,
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: const AppText(
              text: 'Готово',
              size: 16,
              color: AppColors.white,
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
            child: const AppText(
              text: 'Удалить',
              size: 16,
              color: AppColors.red,
              weight: 3,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: 320,
          decoration: const BoxDecoration(
            color: AppColors.grey,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 10),
            child: Column(
              children: [
                SizedBox(
                  height: 48,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const AppText(text: 'Название', size: 15),
                      Container(
                          child: const Expanded(
                              child: TextField(
                        decoration: InputDecoration.collapsed(
                            hintText: 'Название платежа'),
                        textAlign: TextAlign.right,
                      )))
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
                      Container(
                          child: const Expanded(
                              child: TextField(
                        decoration: InputDecoration.collapsed(
                            hintText: 'Введите стоимость'),
                        textAlign: TextAlign.right,
                      )))
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
                      Container(
                          child: const Expanded(
                              child: TextField(
                        decoration:
                            InputDecoration.collapsed(hintText: 'Введите дату'),
                        textAlign: TextAlign.right,
                      )))
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
      ),
    );
  }
}

class DropdownDemo extends StatefulWidget {
  DropdownDemo({Key? key, required this.itemsVal}) : super(key: key);
  List<String> itemsVal;
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
                style: TextStyle(fontSize: 16),
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
