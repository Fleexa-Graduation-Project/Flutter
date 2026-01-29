import 'package:fl_chart/fl_chart.dart';
import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class TempChartLine {
  static LineChartBarData line() {
    return LineChartBarData(
      spots: _spots,
      isCurved: true,
      color: AppColors.crimsonRed,
      barWidth: 2,
      isStrokeCapRound: true,
      dotData: FlDotData(
        show: true,
        getDotPainter: (_, __, ___, ____) => FlDotCirclePainter(
          radius: 3,
          color: AppColors.crimsonRed,
          strokeWidth: 1,
          strokeColor: Colors.black.withOpacity(0.3),
        ),
      ),
      belowBarData: BarAreaData(
        show: true,
        color: AppColors.crimsonRed.withOpacity(0.05),
      ),
    );
  }

  static const List<FlSpot> _spots = [
    FlSpot(0, 18),
    FlSpot(2, 16),
    FlSpot(4, 12),
    FlSpot(6, 12),
    FlSpot(8, 15),
    FlSpot(10, 26),
    FlSpot(12, 29),
    FlSpot(14, 30),
    FlSpot(16, 32),
    FlSpot(18, 29),
    FlSpot(20, 27),
    FlSpot(22, 26),
  ];
}
