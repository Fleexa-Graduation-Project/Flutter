import 'package:fleexa/core/utils/constants/app_strings.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:fleexa/Features/devices/sensors/light/data/dummy_data.dart';
import 'package:fleexa/Features/devices/sensors/light/data/model/light_chart_model.dart';
import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/core/utils/constants/styles.dart';

class LightSensorChart extends StatelessWidget {
  final TimeRange range;

  const LightSensorChart({
    super.key,
    required this.range,
  });

  @override
  Widget build(BuildContext context) {
    final data = getLightData(range);

    return SfCartesianChart(
      key: ValueKey(range), // important

      legend: Legend(
        isVisible: true,
        position: LegendPosition.bottom,
        iconHeight: 12,
        iconWidth: 12,
        textStyle: Styles.style12Regular.copyWith(color: AppColors.lightGray),
      ),

      plotAreaBorderWidth: 0,
      plotAreaBorderColor: Colors.transparent,

      /// X Axis
      primaryXAxis: CategoryAxis(
        interval: 1,
        labelAlignment: LabelAlignment.center,
        placeLabelsNearAxisLine: false,
        labelStyle: Styles.style10Regular.copyWith(color: AppColors.coolGray),
        axisLine: const AxisLine(width: 1, color: AppColors.coolGray),
        axisLabelFormatter: (args) {
          return ChartAxisLabel(args.text, args.textStyle);
        },
        majorGridLines: MajorGridLines(
          width: 1,
          color: AppColors.white.withOpacity(0.05),
          dashArray: const [5, 5],
        ),
        majorTickLines: const MajorTickLines(size: 0),
      ),

      /// Y Axis
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

      /// Series
      series: <CartesianSeries>[
        LineSeries<LightChartModel, String>(
          dataSource: data,
          name: S.of(context).unitLuxText,
          xValueMapper: (data, _) => data.time,
          yValueMapper: (data, _) => data.luxLevel,
          color: AppColors.crimsonRed,
          width: 2,
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
