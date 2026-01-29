import 'package:fl_chart/fl_chart.dart';
import 'package:fleexa/Features/devices/sensors/tempreature/presentation/views/widgets/temp_chart_line.dart';
import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:flutter/material.dart';

class TempChartStyle extends StatelessWidget {
  const TempChartStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(LineChartData(
      lineTouchData: LineTouchData(
        enabled: true,
        touchTooltipData: LineTouchTooltipData(
          getTooltipColor: (_) => Colors.transparent,
          tooltipMargin: 12,
          getTooltipItems: (touchedSpots) {
            return touchedSpots.map((spot) {
              return LineTooltipItem(
                spot.y.toString(),
                Styles.style12Medium.copyWith(color: AppColors.white50),
              );
            }).toList();
          },
        ),
      ),
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        drawHorizontalLine: true,
        horizontalInterval: 8,
        verticalInterval: 2,
        getDrawingHorizontalLine: (value) => FlLine(
          color: AppColors.white.withOpacity(0.05),
          strokeWidth: 1,
          dashArray: [4, 4],
        ),
        getDrawingVerticalLine: (value) => FlLine(
          color: AppColors.white.withOpacity(0.05),
          strokeWidth: 1,
          dashArray: [4, 4],
        ),
      ),
      titlesData: const FlTitlesData(
        show: true,
        rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 2,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 8,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 35,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: true,
        border: const Border(
          bottom: BorderSide(color: AppColors.white50),
          left: BorderSide(color: AppColors.white50),
        ),
      ),
      minX: 0,
      maxX: 22,
      minY: 0,
      maxY: 40,
      lineBarsData: [
        TempChartLine.line(),
      ],
    ));
  }
}

Widget bottomTitleWidgets(double value, TitleMeta meta) {
  return SideTitleWidget(
    meta: meta,
    space: 10,
    child: Text(
      '${value.toInt()}h',
      // '${value.toInt().toString().padLeft(1, '0')}:00',
      style: Styles.style10Regular.copyWith(color: AppColors.white80),
    ),
  );
}

Widget leftTitleWidgets(double value, TitleMeta meta) {
  return Text(
    value.toInt().toString(),
    style: Styles.style10Regular.copyWith(color: AppColors.white80),
    textAlign: TextAlign.left,
  );
}
