import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/functions/responsive_font.dart';
import 'package:invoicing_dashboard/utils/colors.dart';
import 'package:invoicing_dashboard/widgets/statics_item_dot.dart';

abstract class CustomLineChartData {
  static LineChartData chartData(BuildContext context) {
    Widget leftTitleWidgets(double value, TitleMeta meta) {
      TextStyle? style = Theme.of(context).textTheme.labelMedium;

      String text;
      switch (value.toInt()) {
        case 35:
          text = '0';
          break;
        case 70:
          text = r'$50';
          break;
        case 105:
          text = r'$100';
          break;
        case 140:
          text = r'$150';
          break;
        case 175:
          text = r'$200';
          break;
        default:
          return Container();
      }

      return Text(text, style: style, textAlign: TextAlign.left);
    }

    Widget bottomTitleWidgets(double value, TitleMeta meta) {
      TextStyle? style = Theme.of(context).textTheme.labelLarge?.copyWith(
          fontSize: ResponsiveFont.getResponsiveFontSize(context,
              fontSize: Theme.of(context).textTheme.labelLarge?.fontSize));
      Widget text;
      switch (value.toInt()) {
        case 1:
          text = Column(
            children: [
              StaticsItemDot(),
              Text('January', style: style),
            ],
          );
          break;
        case 3:
          text = Column(
            children: [
              StaticsItemDot(),
              Text('February', style: style),
            ],
          );
          break;
        case 5:
          text = Column(
            children: [
              StaticsItemDot(),
              Text('March', style: style),
            ],
          );
          break;
        case 7:
          text = Column(
            children: [
              StaticsItemDot(),
              Text('April', style: style),
            ],
          );
          break;
        case 9:
          text = Column(
            children: [
              StaticsItemDot(),
              Text('May', style: style),
            ],
          );
          break;
        case 11:
          text = Column(
            children: [
              StaticsItemDot(),
              Text('June', style: style),
            ],
          );
          break;
        case 13:
          text = Column(
            children: [
              StaticsItemDot(),
              Text('July', style: style),
            ],
          );
          break;
        default:
          text = Text('', style: style);
          break;
      }

      return SideTitleWidget(
        meta: meta,
        child: text,
      );
    }

    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: false,
        horizontalInterval: 35,
      ),
      titlesData: FlTitlesData(
        show: true,
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            interval: 1,
            showTitles: true,
            reservedSize: 35,
            getTitlesWidget: leftTitleWidgets,
          ),
        ),
        rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
              interval: 1,
              showTitles: true,
              reservedSize: 40,
              getTitlesWidget: bottomTitleWidgets),
        ),
      ),
      borderData: FlBorderData(show: false),
      minX: 0,
      maxX: 14,
      minY: 30,
      maxY: 200,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, 50),
            FlSpot(2, 90),
            FlSpot(3, 70),
            FlSpot(4, 110),
            FlSpot(5, 80),
            FlSpot(6, 170),
            FlSpot(7, 50),
            FlSpot(8, 150),
            FlSpot(9, 120),
            FlSpot(10, 175),
            FlSpot(11, 140),
            FlSpot(14, 160)
          ],
          isCurved: true,
          color: ColorsProject.mainBlueColor,
          barWidth: 3,
          isStrokeCapRound: true,
          belowBarData: BarAreaData(
              show: true,
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.blue.withValues(alpha: 0.4),
                    Colors.blue.withValues(alpha: 0.2),
                    Colors.transparent
                  ])),
          dotData: FlDotData(show: false),
        ),
      ],
    );
  }
}
