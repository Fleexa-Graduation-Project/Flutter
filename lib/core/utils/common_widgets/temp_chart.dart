import 'package:fleexa/Features/devices/actuators/ac/data/dummy_chart_data.dart';
import 'package:fleexa/Features/devices/actuators/ac/data/temp_chart_data.dart';
import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../constants/styles.dart';

class TempChart extends StatelessWidget {
  const TempChart({super.key});

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      plotAreaBorderWidth: 0,
      plotAreaBorderColor: Colors.transparent,

      // X-Axis (Time)
      primaryXAxis: CategoryAxis(
        interval: 1,
        labelAlignment: LabelAlignment.center,
        placeLabelsNearAxisLine: false,
        labelStyle: Styles.style10Regular.copyWith(color: AppColors.coolGray),
        axisLine: const AxisLine(width: 1),
        tickPosition: TickPosition.outside,
        majorTickLines:
            const MajorTickLines(size: 12, color: Colors.transparent),
        axisLabelFormatter: (AxisLabelRenderDetails args) {
          return ChartAxisLabel('${args.text}h', args.textStyle);
        },
        majorGridLines: MajorGridLines(
          width: 1,
          color: AppColors.white.withOpacity(0.05),
          dashArray: const [5, 5],
        ),
        labelPlacement: LabelPlacement.onTicks,
      ),

      // Y-Axis (Temperature)
      primaryYAxis: NumericAxis(
        minimum: 0,
        maximum: 40,
        interval: 8,
        axisLine: const AxisLine(width: 1),
        tickPosition: TickPosition.outside,
        majorTickLines:
            const MajorTickLines(size: 12, color: Colors.transparent),
        majorGridLines: MajorGridLines(
          width: 1,
          color: AppColors.white.withOpacity(0.05),
          dashArray: const [5, 5],
        ),
        labelStyle: Styles.style12Regular.copyWith(color: AppColors.coolGray),
      ),
      legend: Legend(
        isVisible: true,
        position: LegendPosition.bottom,
        iconHeight: 12,
        iconWidth: 12,
        textStyle: Styles.style12Regular.copyWith(color: AppColors.lightGray),
      ),
      series: <CartesianSeries>[
        SplineSeries<TempChartData, String>(
          name: 'Temperature',
          dataSource: tempchartData,
          xValueMapper: (TempChartData data, _) => data.time,
          yValueMapper: (TempChartData data, _) => data.temp,

          // Line Styling
          color: AppColors.crimsonRed,
          width: 2,

          // The small dots on the line
          markerSettings: const MarkerSettings(
            isVisible: true,
            height: 6,
            width: 6,
            color: AppColors.crimsonRed,
            borderColor: AppColors.crimsonRed,
          ),
        ),
      ],
    );
  }
}
