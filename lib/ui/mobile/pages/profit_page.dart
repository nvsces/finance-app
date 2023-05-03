import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class ProfitPage extends StatelessWidget {
  const ProfitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: PieChart(PieChartData(
            centerSpaceRadius: 100,
            centerSpaceColor: Colors.grey.withOpacity(0.3),
            borderData: FlBorderData(show: false),
            sections: [
              PieChartSectionData(value: 10, color: Colors.blue),
              PieChartSectionData(value: 10, color: Colors.orange),
              PieChartSectionData(value: 10, color: Colors.red),
              PieChartSectionData(value: 10, color: Colors.purple),
              PieChartSectionData(value: 20, color: Colors.amber),
              PieChartSectionData(value: 30, color: Colors.green)
            ])),
      ),
    );
  }
}
