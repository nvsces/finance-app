import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ExpensesPage extends StatelessWidget {
  const ExpensesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          child: PieChart(PieChartData(
              centerSpaceRadius: 100,
              centerSpaceColor: Colors.grey.withOpacity(0.3),
              borderData: FlBorderData(show: false),
              sections: [
                PieChartSectionData(value: 50, color: Colors.purple),
                PieChartSectionData(value: 20, color: Colors.amber),
                PieChartSectionData(value: 30, color: Colors.green)
              ])),
        ),
      ),
    );
  }
}
