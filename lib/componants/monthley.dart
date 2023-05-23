import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class ChartData {
  final String month;
  final int value;

  ChartData(this.month, this.value);
}

class MyChartMonthlyPage extends StatelessWidget {
  final List<ChartData> data = [
    ChartData('Jan', 100),
    ChartData('Feb', 150),
    ChartData('Mar', 70),
    ChartData('Apr', 120),
    ChartData('May', 90),
    ChartData('June', 180),
    ChartData('July', 50),
    ChartData('Aug', 130),
    ChartData('Sep', 160),
    ChartData('Oct', 80),
    ChartData('Nov', 110),
    ChartData('Dec', 140),
  ];

  @override
  Widget build(BuildContext context) {
    final series = [
      charts.Series(
        id: 'monthlyChart',
        seriesColor: charts.ColorUtil.fromDartColor(Theme.of(context).colorScheme.primary),

        data: data,
        domainFn: (ChartData entry, _) => entry.month,
        measureFn: (ChartData entry, _) => entry.value,
      ),
    ];

    final chart = charts.BarChart(
      series,
      animate: true,
    );

    final chartWidget = Padding(
      padding: EdgeInsets.all(16.0),
      child: SizedBox(
        height: 200.0,
        child: chart,
      ),
    );

    return chartWidget;
  }
}
