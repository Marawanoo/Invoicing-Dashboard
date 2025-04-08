import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class AssetsCustomChart extends StatelessWidget {
  const AssetsCustomChart({super.key, required this.spots});
  final List<FlSpot> spots;
  @override
  Widget build(BuildContext context) {
    List<FlSpot> getRandomSpots() {
      return spots;
    }

    return LineChart(LineChartData(
      gridData: FlGridData(show: false),
      titlesData: FlTitlesData(show: false),
      borderData: FlBorderData(show: false),
      lineBarsData: [
        LineChartBarData(
            spots: getRandomSpots(),
            isCurved: true,
            color: Colors.blue,
            barWidth: 2,
            isStrokeCapRound: true,
            belowBarData: BarAreaData(
                show: true,
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.blue.withValues(alpha: 0.2),
                      Colors.blue.withValues(alpha: 0.1),
                    ])),
            dotData: FlDotData(show: false)),
      ],
    ));
  }
}
