import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../../../../../core/utils/constants/styles.dart';
import '../../../../../shared/data/models/chart_point_model.dart';

class UsageChart extends StatelessWidget {
  const UsageChart({
    super.key,
    required this.data,
    required this.periodKey,
    required this.maxValue,
  });

  final List<ChartPointModel> data;
  final String periodKey;
  final double maxValue;

  @override
  Widget build(BuildContext context) {
    final double dynamicMax = maxValue + (maxValue * 0.5);
    final double interval = (dynamicMax / 6).ceilToDouble();

    return SfCartesianChart(
      key: ValueKey(periodKey),
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
        labelIntersectAction: AxisLabelIntersectAction.rotate90,
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
        maximum: dynamicMax,
        interval: interval,
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
        BarSeries<ChartPointModel, String>(
          name: 'Usage Hours',
          dataSource: data,
          xValueMapper: (point, _) => point.label,
          yValueMapper: (point, _) => point.value,
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
