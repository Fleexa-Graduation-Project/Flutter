import 'package:fleexa/core/utils/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:fleexa/Features/devices/sensors/gas/data/dummy_data.dart';
import 'package:fleexa/Features/devices/sensors/gas/data/models/gas_chart_model.dart';
import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:fleexa/generated/l10n.dart';


class GasSensorChart extends StatelessWidget {
  final TimeRange range;

  const GasSensorChart({
    super.key,
    required this.range,
  });

  @override
  Widget build(BuildContext context) {
    final data = getGasData(range);

    return SfCartesianChart(
      key: ValueKey(range),

      legend: Legend(
        isVisible: true,
        position: LegendPosition.bottom,
        iconHeight: 12,
        iconWidth: 12,
        textStyle:
            Styles.style12Regular.copyWith(color: AppColors.lightGray),
      ),

      plotAreaBorderWidth: 0,
      plotAreaBorderColor: Colors.transparent,

      /// X Axis
      primaryXAxis: CategoryAxis(
        interval: 1,
        labelAlignment: LabelAlignment.center,
        placeLabelsNearAxisLine: false,
        labelStyle:
            Styles.style10Regular.copyWith(color: AppColors.coolGray),
        axisLine: const AxisLine(width: 1, color: AppColors.coolGray),
        axisLabelFormatter: (args) {
          return ChartAxisLabel('${args.text}', args.textStyle);
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
        maximum: 100,
        interval: 20,
        majorTickLines: const MajorTickLines(size: 0),
        majorGridLines: MajorGridLines(
          width: 1,
          color: AppColors.white.withOpacity(0.05),
          dashArray: const [5, 5],
        ),
        labelStyle:
            Styles.style12Regular.copyWith(color: AppColors.coolGray),
        axisLine: const AxisLine(width: 1, color: AppColors.coolGray),
        tickPosition: TickPosition.inside,
      ),

      /// Series
      series: <CartesianSeries>[
        LineSeries<GasChartModel, String>(
          dataSource: data,
          name: S.of(context).gasLevel,

          xValueMapper: (data, _) => data.time,
          yValueMapper: (data, _) => data.gasLevel,

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