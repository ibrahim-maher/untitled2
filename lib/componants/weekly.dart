import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class ChartData {
  final String day;
  final int value;

  ChartData(this.day, this.value);
}


class MyChartPage extends StatelessWidget {
  final List<ChartData> data = [
    ChartData('Monday', 10),
    ChartData('Tuesday', 15),
    ChartData('Wednesday', 7),
    ChartData('Thursday', 12),
    ChartData('Friday', 9),
    ChartData('Saturday', 18),
    ChartData('Sunday', 5),
  ];

  @override
  Widget build(BuildContext context) {
    final series = [
      charts.Series(
        id: 'weeklyChart',
        seriesColor: charts.ColorUtil.fromDartColor(Theme.of(context).colorScheme.primary),
        data: data,
        domainFn: (ChartData entry, _) => entry.day,
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
        height: 300.0,
        child: chart,
      ),
    );

    return chartWidget;

  }
}
