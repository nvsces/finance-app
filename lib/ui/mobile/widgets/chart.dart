import 'dart:math';

import 'package:finance_app/data/models/transaction.dart';
import 'package:finance_app/domain/state/wallet/wallet_bloc.dart';
import 'package:finance_app/extensions/build_context_ext.dart';
import 'package:finance_app/router/mobile_routes.dart';
import 'package:finance_app/ui/mobile/widgets/animation_chart.dart';
import 'package:finance_app/ui/theme/app_colors.dart';
import 'package:finance_app/ui/theme/app_text_theme.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ChartWidget extends StatefulWidget {
  const ChartWidget({super.key, required this.transactions});
  final List<Transaction> transactions;

  @override
  State<ChartWidget> createState() => _ChartWidgetState();
}

class _ChartWidgetState extends State<ChartWidget> {
  final ScrollController _scrollController = ScrollController();
  final categort = <Category>[];
  double widgetHeight = 130;

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return
        // NotificationListener<ScrollNotification>(
        //   onNotification: (ScrollNotification notification) {
        //     double newHeight = 130.0 - notification.metrics.pixels / 0.5;
        //     newHeight = newHeight.clamp(50.0, 100.0);
        //     setState(() {
        //       widgetHeight = newHeight;
        //     });
        //     return true;
        //   },
        //   child:
        SingleChildScrollView(
      controller: _scrollController,
      child: Column(
        children: [
          AnimationChartWidget(
            sections: showingSections(groupBy(widget.transactions)),
            sumValue: categortValue(summValue(widget.transactions)),
            scrollController: _scrollController,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: List.generate(categort.length, (index) {
                const double widthChartBar = 110;
                const double heightChartBar = 10;
                return InkWell(
                  onTap: () {
                    context.push(
                      MobileRoutes.detailCategory.path,
                      extra: categort[index].transactions,
                    );
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 4.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 150,
                          child: Text(
                            categort[index].name,
                            style: AppTextStyle.mainLigthText,
                          ),
                        ),
                        const SizedBox(
                          width: 15.0,
                        ),
                        const Spacer(),
                        Column(
                          children: [
                            Text(
                              categortValue(categort[index].value),
                              style: AppTextStyle.mainLigthText,
                            ),
                            Stack(
                              alignment: AlignmentDirectional.centerStart,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(heightChartBar),
                                    color: context.colors.secondaryElement,
                                  ),
                                  height: heightChartBar,
                                  width: widthChartBar,
                                  // color: AppColors.secondaryElement,
                                ),
                                if (categort[index].value /
                                        (summValue(widget.transactions) / 100) >
                                    9)
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        heightChartBar,
                                      ),
                                      color: categort[index].color,
                                    ),
                                    height: heightChartBar,
                                    width: widthChartBar *
                                        (categort[index].value /
                                            summValue(widget.transactions)),
                                  )
                                else
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        heightChartBar,
                                      ),
                                      color: categort[index].color,
                                    ),
                                    height: heightChartBar,
                                    width: heightChartBar,
                                  ),
                              ],
                            ),
                            const SizedBox(
                              height: 12,
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: 40,
                          child: Text(
                            percentValue(categort[index].value),
                            style: AppTextStyle.mainLigthText,
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
            ),
          )
        ],
      ),
      // ),
    );
  }

  Map<String, List<Transaction>> groupBy(List<Transaction> transactions) {
    final result = <String, List<Transaction>>{};
    for (final tr in transactions) {
      if (result[tr.category.name] == null) {
        result[tr.category.name] = [];
      }
      result[tr.category.name]?.add(tr);
    }
    return result;
  }

  double summValue(List<Transaction> transactions) {
    var summ = 0.0;
    for (final tr in transactions) {
      summ = summ + tr.value.abs();
    }
    return summ;
  }

  String percentValue(double categort) {
    final double percent = categort / (summValue(widget.transactions) / 100);
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
    usedColorsIndex.clear();
    // const fontSize = 16.0;
    const radius = 17.0;
    // final summ = summValue(transactions);
    // const shadows = [Shadow(color: Colors.black, blurRadius: 2)];

    final result = <PieChartSectionData>[];

    groups.forEach((key, value) {
      final color = getColorFromKey(key);
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
        radius: radius,
      );
      result.add(data);
    });

    categort.sort((b, a) => a.value.compareTo(b.value));

    return result;
  }
}

Color getColorFromKey(String key) {
  final colorIndex = key.hashCode % AppColors.contrastColors.length;
  return AppColors.contrastColors[colorIndex];
}

final usedColorsIndex = <int>[];

Color randomColor() {
  return AppColors.peiColors[Random().nextInt(8)];
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
