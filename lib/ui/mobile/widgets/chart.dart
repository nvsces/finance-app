import 'dart:convert';
import 'dart:math';

import 'package:finance_app/router/mobile_routes.dart';
import 'package:finance_app/ui/mobile/pages/detail_category_page.dart';
import 'package:finance_app/ui/theme/app_colors.dart';
import 'package:finance_app/ui/theme/app_text.dart';
import 'package:fl_chart/fl_chart.dart';

// import 'package:pie_chart/pie_chart.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:finance_app/data/models/transaction.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../domain/state/auth/auth_bloc.dart';
import '../../theme/button/app_button.dart';

class ChartWidget extends StatelessWidget {
  ChartWidget({super.key, required this.transactions});
  final List<Transaction> transactions;

  final categort = <Category>[];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.3,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: PieChart(
                      PieChartData(
                        pieTouchData: PieTouchData(),
                        borderData: FlBorderData(
                          show: false,
                        ),
                        sectionsSpace: 0,
                        centerSpaceRadius: 130,
                        sections: showingSections(groupBy(transactions)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            'Всего:  ${summValue(transactions)}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
          Column(
              children: List.generate(categort.length, (index) {
            final String categortValueStr =
                categort[index].value.ceil().toString();
            final String categortValueCeil =
                (categort[index].value ~/ 1000).toString();
            const double widthChartBar = 150;
            final int proc =
                (categort[index].value / (summValue(transactions) / 100))
                    .round();
            return InkWell(
              onTap: () {
                context.push(
                  MobileRoutes.detailCategory.path,
                  extra: categort[index].transactions,
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 4.0),
                child: Row(
                  children: [
                    Text(categort[index].name),
                    const SizedBox(
                      width: 15.0,
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Text(categort[index].value.ceil() >= 1000
                            ? '$categortValueCeil ${categortValueStr.substring(categortValueStr.length - 3)} ₽'
                            : '${categort[index].value.ceil()} ₽'),
                        Stack(children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.secondaryElement,
                            ),
                            height: 10,
                            width: widthChartBar,
                            // color: AppColors.secondaryElement,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: categort[index].color),
                            height: 10,
                            width: widthChartBar *
                                (categort[index].value /
                                    summValue(transactions)),
                          ),
                        ]),
                        const SizedBox(
                          height: 12,
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(proc < 1 ? '<1 %' : '$proc %'),
                  ],
                ),
              ),
            );
          }))
        ],
      ),
    );
  }

  Map<String, List<Transaction>> groupBy(List<Transaction> transactions) {
    final result = <String, List<Transaction>>{};
    for (var tr in transactions) {
      if (result[tr.category] == null) {
        result[tr.category] = [];
      }
      result[tr.category]?.add(tr);
    }
    return result;
  }

  double summValue(List<Transaction> transactions) {
    var summ = 0.0;
    for (var tr in transactions) {
      summ = summ + tr.value.abs();
    }
    return summ;
  }

  List<PieChartSectionData> showingSections(
    Map<String, List<Transaction>> groups,
  ) {
    categort.clear();
    const fontSize = 16.0;
    const radius = 17.0;
    final summ = summValue(transactions);
    const shadows = [Shadow(color: Colors.black, blurRadius: 2)];

    final result = <PieChartSectionData>[];

    groups.forEach((key, value) {
      final color = randomColor();
      final currentSumm = summValue(value);
      categort.add(
        Category(
          name: key,
          value: currentSumm,
          color: color,
          transactions: value,
        ),
      );
      final data = PieChartSectionData(
        showTitle: false,
        color: color,
        value: currentSumm.abs(),
        // title: '${100 * currentSumm / summ}%',
        // title: key,
        radius: radius,
        // titleStyle: const TextStyle(
        //   fontSize: fontSize,
        //   fontWeight: FontWeight.bold,
        //   color: Colors.black,
        //   shadows: shadows,
        // ),
      );
      result.add(data);
    });

    categort.sort((b, a) => a.value.compareTo(b.value));

    return result;
  }
}

Color randomColor() {
  return Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
}

class Category {
  final String name;
  final double value;
  final Color color;
  final List<Transaction> transactions;
  Category({
    required this.name,
    required this.value,
    required this.color,
    required this.transactions,
  });

  Category copyWith({
    String? name,
    double? value,
    Color? color,
    List<Transaction>? transactions,
  }) {
    return Category(
      name: name ?? this.name,
      value: value ?? this.value,
      color: color ?? this.color,
      transactions: transactions ?? this.transactions,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'value': value,
      'color': color.value,
      'transactions': transactions.map((x) => x.toMap()).toList(),
    };
  }

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      name: map['name'] ?? '',
      value: map['value']?.toDouble() ?? 0.0,
      color: Color(map['color']),
      transactions: List<Transaction>.from(
          map['transactions']?.map((x) => Transaction.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Category.fromJson(String source) =>
      Category.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Category(name: $name, value: $value, color: $color, transactions: $transactions)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Category &&
        other.name == name &&
        other.value == value &&
        other.color == color &&
        listEquals(other.transactions, transactions);
  }

  @override
  int get hashCode {
    return name.hashCode ^
        value.hashCode ^
        color.hashCode ^
        transactions.hashCode;
  }
}
