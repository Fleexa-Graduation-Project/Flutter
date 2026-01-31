import 'package:fleexa/Features/devices/actuators/ac/data/dummy_chart_data.dart';
import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../../../core/utils/constants/styles.dart';
import '../../data/bar_chart_data.dart';

class UsageChart extends StatelessWidget {
  const UsageChart({super.key});

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      // Remove chart border
      plotAreaBorderWidth: 0,

      // X & Y axis styling
      primaryXAxis: CategoryAxis(
        axisLine: const AxisLine(width: 1, color: AppColors.coolGray),
        tickPosition: TickPosition.inside,
        labelStyle: Styles.style12Regular.copyWith(color: AppColors.coolGray),
        majorTickLines: const MajorTickLines(size: 0),
        majorGridLines: const MajorGridLines(
          width: 1,
          color: AppColors.dimGray,
          dashArray: <double>[5, 5],
        ),
      ),
      primaryYAxis: NumericAxis(
        minimum: 0,
        maximum: 12,
        interval: 3,
        tickPosition: TickPosition.inside,
        opposedPosition: true,
        labelFormat: '{value}h',
        axisLine: const AxisLine(width: 0),
        labelStyle: Styles.style12Regular.copyWith(color: AppColors.coolGray),
        majorGridLines: const MajorGridLines(
          width: 1,
          color: AppColors.dimGray,
          dashArray: <double>[5, 5],
        ),
      ),

      // Chart series
      series: <CartesianSeries>[
        BarSeries<BarChartData, String>(
          dataSource: barChartData,
          xValueMapper: (BarChartData data, _) => data.day,
          yValueMapper: (BarChartData data, _) => data.hours,
          color: AppColors.darkMaroon,
          width: 0.5,
          isTrackVisible: true,
          trackColor: AppColors.darkGray,
          dataLabelSettings: DataLabelSettings(
            isVisible: true,
            labelAlignment: ChartDataLabelAlignment.outer,
            textStyle: Styles.style12Regular.copyWith(
              color: AppColors.coolGray,
            ),
          ),
        ),
      ],
    );
  }
}
