import 'package:capitaltrack/models/chart.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class InvestmentChart extends StatelessWidget {
  const InvestmentChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData('David', 25, Color.fromRGBO(9, 0, 136, 1)),
      ChartData('Steve', 38, Color.fromRGBO(147, 0, 119, 1)),
      ChartData('Jack', 34, Color.fromRGBO(228, 0, 124, 1)),
      ChartData('Others', 52, Color.fromRGBO(255, 189, 57, 1))
    ];

    return Center(
      child: Container(
        child: SfCircularChart(
          series: <CircularSeries>[
            DoughnutSeries<ChartData, String>(
                dataSource: chartData,
                xValueMapper: (ChartData data, _) => data.x,
                yValueMapper: (ChartData data, _) => data.y,
                // Mode of grouping
                groupMode: CircularChartGroupMode.point,
                groupTo: 2)
          ],
        ),
      ),
    );
  }
}
