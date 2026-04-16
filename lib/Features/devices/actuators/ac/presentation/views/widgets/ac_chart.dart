import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../../../../core/utils/constants/app_strings.dart';
import '../../../../../../../core/utils/constants/styles.dart';
import '../../../../../../../core/utils/common_widgets/temp_chart/data/dummy_data.dart';
import '../../../../../../../core/utils/common_widgets/temp_chart/data/model/temp_stats.dart';

class AcChart extends StatelessWidget {
  const AcChart({super.key, required this.range});

  final TimeRange range;

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      key: ValueKey(range),
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
          return ChartAxisLabel(args.text, args.textStyle);
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
        LineSeries<TempStats, String>(
          name: S.of(context).temperature,
          dataSource: getTempStats(range),
          xValueMapper: (TempStats data, _) => data.timeLabel,
          yValueMapper: (TempStats data, _) => data.temperature,

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
