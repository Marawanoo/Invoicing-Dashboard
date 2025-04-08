import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/functions/responsive_font.dart';
import 'package:invoicing_dashboard/widgets/line_chart_data.dart';
import 'package:invoicing_dashboard/widgets/statics_time_item.dart';

class HomeStaticsContainer extends StatelessWidget {
  const HomeStaticsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = ['1H', '3H', '5H', '1W', '1M'];
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Statics',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Theme.of(context).textTheme.headlineLarge?.color,
                    fontSize: ResponsiveFont.getResponsiveFontSize(context,
                        fontSize: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.fontSize),
                  ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: items
                    .asMap()
                    .entries
                    .map(
                      (e) => StaticsTimeItem(
                        title: e.value,
                        isSelected: e.value == '1W',
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
        Expanded(
          child: SizedBox(
              width: MediaQuery.sizeOf(context).width,
              child: LineChart(CustomLineChartData.chartData(context))),
        )
      ],
    );
  }
}
