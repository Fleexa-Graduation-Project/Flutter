import 'package:fl_chart/fl_chart.dart';
import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AlertsChartStyles {
  static const grid = FlGridData(
    show: true,
    drawVerticalLine: true,
    horizontalInterval: 2,
    verticalInterval: 1,
    getDrawingHorizontalLine: _line,
    getDrawingVerticalLine: _line,
  );

  static FlLine _line(double _) => const FlLine(
        color: AppColors.white10,
        strokeWidth: 1,
        dashArray: [5, 5],
      );

  static final border = FlBorderData(
    show: true,
    border: const Border(
      bottom: BorderSide(color: AppColors.white50),
      left: BorderSide(color: AppColors.white50),
    ),
  );
}
