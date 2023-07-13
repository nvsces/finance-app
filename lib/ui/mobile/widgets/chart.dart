import 'dart:convert';
import 'dart:math';
import 'package:finance_app/router/mobile_routes.dart';
import 'package:finance_app/ui/theme/app_colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:finance_app/data/models/transaction.dart';
import 'package:go_router/go_router.dart';
import '../../theme/app_text_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
                    child: Stack(children: [
                      PieChart(
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
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('${categortValue(summValue(transactions))}',
                              style: AppTextStyle.mainBoldText),
                          Center(
                              child: Text(
                            '${AppLocalizations.of(context)!.peiChartSources} 2',
                            style: AppTextStyle.secondaryText,
                          ))
                        ],
                      )
                    ]),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
                children: List.generate(categort.length, (index) {
              const double widthChartBar = 120;
              const double heightChartBar = 10;
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
                      Text(
                        categort[index].name,
                        style: AppTextStyle.mainLigthText,
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      const Spacer(),
                      Column(
                        children: [
                          Text(categortValue(categort[index].value),
                              style: AppTextStyle.mainLigthText),
                          Stack(
                              alignment: AlignmentDirectional.centerStart,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(heightChartBar),
                                    color: AppColors.secondaryElement,
                                  ),
                                  height: heightChartBar,
                                  width: widthChartBar,
                                  // color: AppColors.secondaryElement,
                                ),
                                categort[index].value /
                                            (summValue(transactions) / 100) >
                                        9
                                    ? Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                heightChartBar),
                                            color: categort[index].color),
                                        height: heightChartBar,
                                        width: widthChartBar *
                                            (categort[index].value /
                                                summValue(transactions)),
                                      )
                                    : Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                heightChartBar),
                                            color: categort[index].color),
                                        height: heightChartBar,
                                        width: heightChartBar,
                                      ),
                              ]),
                          const SizedBox(
                            height: 12,
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 40,
                        child: Text(percentValue(categort[index].value),
                            style: AppTextStyle.mainLigthText),
                      )
                    ],
                  ),
                ),
              );
            })),
          )
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

  String percentValue(double categort) {
    final double percent = categort / (summValue(transactions) / 100);
    if (percent < 1) {
      return '<1 %';
    }
    return '${percent.toStringAsFixed(1)} %';
  }

  String categortValue(double categort) {
    final String categortValueStr = categort.ceil().toString();
    final String categortValueCeil = (categort ~/ 1000).toString();
    if (categort.ceil() >= 1000) {
      return '$categortValueCeil ${categortValueStr.substring(categortValueStr.length - 3)} ₽';
    }
    return '${categort.ceil()} ₽';
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
  return AppColors.peiColor[Random().nextInt(8)];
}
// Color randomColor() {
//   return Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
// }

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
