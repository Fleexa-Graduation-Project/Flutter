import 'package:fleexa/Features/overview/system_overview/data/dummy_data.dart';
import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/core/utils/constants/app_strings.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../../../../core/utils/constants/styles.dart';
import '../../../../data/models/daily_alert_stats.dart';

class AlertWarningChart extends StatelessWidget {
  const AlertWarningChart({super.key, required this.range});

  final TimeRange range;

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      key: ValueKey(range),
      plotAreaBorderWidth: 0,
      legend: Legend(
        isVisible: true,
        position: LegendPosition.bottom,
        iconHeight: 12,
        iconWidth: 12,
        textStyle: Styles.style12Regular.copyWith(color: AppColors.lightGray),
      ),
      primaryXAxis: CategoryAxis(
        labelPlacement: LabelPlacement.onTicks,
        majorGridLines: const MajorGridLines(
            width: 1, color: Color(0xFF333333), dashArray: [5, 5]),
        axisLine: const AxisLine(width: 1),
        tickPosition: TickPosition.outside,
        majorTickLines:
            const MajorTickLines(size: 12, color: Colors.transparent),
        labelStyle: Styles.style12Regular.copyWith(color: AppColors.lightGray),
      ),
      primaryYAxis: NumericAxis(
        majorGridLines: const MajorGridLines(
            width: 1, color: Color(0xFF333333), dashArray: [5, 5]),
        axisLine: const AxisLine(width: 1),
        majorTickLines:
            const MajorTickLines(size: 10, color: Colors.transparent),
        tickPosition: TickPosition.outside,
        labelStyle: Styles.style12Regular.copyWith(color: AppColors.lightGray),
      ),
      series: <CartesianSeries>[
        // SERIES 1: WARNINGS
        LineSeries<DailyAlertStats, String>(
          name: S.of(context).statusWarning,
          animationDuration: 1000,
          dataSource: getWeeklyStats(range),
          xValueMapper: (DailyAlertStats data, _) => data.dayName,
          yValueMapper: (DailyAlertStats data, _) => data.warningCount,
          color: AppColors.copperOrange,
          width: 3,
          markerSettings: const MarkerSettings(
            isVisible: true,
            borderColor: AppColors.copperOrange,
            color: AppColors.copperOrange,
          ),
        ),

        // SERIES 2: CRITICAL
        LineSeries<DailyAlertStats, String>(
          name: S.of(context).statusCritical,
          animationDuration: 1000,
          dataSource: getWeeklyStats(range),
          xValueMapper: (DailyAlertStats data, _) => data.dayName,
          yValueMapper: (DailyAlertStats data, _) => data.criticalCount,
          color: AppColors.crimsonRed,
          width: 3,
          markerSettings: const MarkerSettings(
            isVisible: true,
            borderColor: AppColors.crimsonRed,
            color: AppColors.crimsonRed,
          ),
        ),
      ],
    );
  }
}
