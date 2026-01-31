import 'package:fleexa/Features/devices/sensors/light/data/dummy_data.dart';
import 'package:fleexa/Features/devices/sensors/light/data/model/light_chart_model.dart';
import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class LightSensorChart extends StatelessWidget {
  const LightSensorChart({super.key});

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      legend: Legend(
        isVisible: true,
        position: LegendPosition.bottom,
        iconHeight: 12,
        iconWidth: 12,
        textStyle: Styles.style12Regular.copyWith(color: AppColors.lightGray),
      ),
      plotAreaBorderWidth: 0,
      plotAreaBorderColor: Colors.transparent,

      // X-Axis (Time)
      primaryXAxis: CategoryAxis(
        interval: 1,
        labelAlignment: LabelAlignment.center,
        placeLabelsNearAxisLine: false,
        labelStyle: Styles.style10Regular.copyWith(color: AppColors.coolGray),
        axisLine: const AxisLine(width: 1, color: AppColors.coolGray),
        axisLabelFormatter: (AxisLabelRenderDetails args) {
          return ChartAxisLabel(args.text, args.textStyle);
        },
        majorGridLines: MajorGridLines(
          width: 1,
          color: AppColors.white.withOpacity(0.05),
          dashArray: const [5, 5],
        ),
        majorTickLines: const MajorTickLines(size: 0),
        labelPlacement: LabelPlacement.onTicks,
      ),

      // Y-Axis (Gas Level)
      primaryYAxis: NumericAxis(
        minimum: 0,
        maximum: 800,
        interval: 160,
        majorTickLines: const MajorTickLines(size: 0),
        majorGridLines: MajorGridLines(
          width: 1,
          color: AppColors.white.withOpacity(0.05),
          dashArray: const [5, 5],
        ),
        labelStyle: Styles.style12Regular.copyWith(color: AppColors.coolGray),
        axisLine: const AxisLine(width: 1, color: AppColors.coolGray),
        tickPosition: TickPosition.inside,
      ),
      series: <CartesianSeries>[
        LineSeries<LightChartModel, String>(
          dataSource: lightChartData,
          name: S.of(context).unitLuxText,

          xValueMapper: (LightChartModel data, _) => data.time,
          yValueMapper: (LightChartModel data, _) => data.luxLevel,
          // Line Styling
          color: AppColors.crimsonRed,
          width: 2,

          // The small dots on the line
          markerSettings: const MarkerSettings(
            isVisible: true,
            height: 4,
            width: 4,
            color: AppColors.crimsonRed,
            borderColor: AppColors.crimsonRed,
          ),
        ),
      ],
    );
  }
}
