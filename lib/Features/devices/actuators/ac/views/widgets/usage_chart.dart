import 'package:fleexa/Features/devices/actuators/ac/data/dummy_data.dart';
import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../../../core/utils/constants/app_strings.dart';
import '../../../../../../core/utils/constants/styles.dart';
import '../../data/models/usage_stats.dart';

class UsageChart extends StatelessWidget {
  const UsageChart({super.key, required this.timerange});

  final TimeRange timerange;

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      key: ValueKey(timerange),
      // Remove chart border
      plotAreaBorderWidth: 0,

      legend: Legend(
        isVisible: true,
        position: LegendPosition.bottom,
        iconHeight: 12,
        iconWidth: 12,
        textStyle: Styles.style12Regular.copyWith(color: AppColors.lightGray),
      ),

      // X & Y axis styling
      primaryXAxis: CategoryAxis(
        axisLine: const AxisLine(width: 1),
        tickPosition: TickPosition.outside,
        majorTickLines:
            const MajorTickLines(size: 12, color: Colors.transparent),
        labelStyle: Styles.style12Regular.copyWith(color: AppColors.coolGray),
        majorGridLines: const MajorGridLines(
          width: 1,
          color: AppColors.dimGray,
          dashArray: <double>[5, 5],
        ),
      ),
      primaryYAxis: NumericAxis(
        minimum: 0,
        maximum: timerange == TimeRange.lastMonth ? 40 : 24,
        interval: timerange == TimeRange.lastMonth ? 5 : 4,
        tickPosition: TickPosition.outside,
        opposedPosition: true,
        labelFormat: '{value}h',
        axisLine: const AxisLine(width: 0),
        majorTickLines: const MajorTickLines(size: 0),
        labelStyle: Styles.style12Regular.copyWith(color: AppColors.coolGray),
        majorGridLines: const MajorGridLines(
          width: 1,
          color: AppColors.dimGray,
          dashArray: <double>[5, 5],
        ),
      ),

      // Chart series
      series: <CartesianSeries>[
        BarSeries<UsageStats, String>(
          name: 'Usage Hours',
          dataSource: getACUsageData(timerange),
          xValueMapper: (UsageStats data, _) => data.timeLabel,
          yValueMapper: (UsageStats data, _) => data.usageHours,
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
