import 'package:fleexa/core/utils/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../../../../core/utils/constants/app_colors.dart';
import '../../../../../../../core/utils/constants/styles.dart';
import '../../../../data/dummy_data.dart';
import '../../../../data/models/energy_stats.dart';

class EnergyConsumptionChart extends StatelessWidget {
  const EnergyConsumptionChart({super.key, required this.range});

  final TimeRange range;

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      key: ValueKey(range),
      plotAreaBorderWidth: 0,
      primaryXAxis: CategoryAxis(
        majorGridLines: const MajorGridLines(
            width: 1, color: Color(0xFF333333), dashArray: [5, 5]),
        axisLine: const AxisLine(width: 1),
        tickPosition: TickPosition.outside,
        majorTickLines:
            const MajorTickLines(size: 12, color: Colors.transparent),
        labelStyle: Styles.style12Regular.copyWith(color: AppColors.lightGray),
      ),
      primaryYAxis: NumericAxis(
        minimum: 0,
        maximum: 40,
        interval: 8,
        axisLine: const AxisLine(width: 1),
        tickPosition: TickPosition.outside,
        majorTickLines:
            const MajorTickLines(size: 12, color: Colors.transparent),
        majorGridLines: const MajorGridLines(
            width: 1, color: Color(0xFF333333), dashArray: [5, 5]),
        labelStyle: Styles.style12Regular.copyWith(color: AppColors.lightGray),
      ),
      series: <CartesianSeries>[
        ColumnSeries<EnergyStats, String>(
          dataSource: getEnergyStats(range),
          xValueMapper: (EnergyStats data, _) => data.label,
          yValueMapper: (EnergyStats data, _) => data.value,

          // Styling
          color: AppColors.wineRed,
          width: range == TimeRange.lastMonth ? 0.4 : 0.6,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(4.r),
            topRight: Radius.circular(4.r),
          ),

          // The "Track" (Background Bar)
          isTrackVisible: true,
          trackColor: AppColors.darkGray,
          trackPadding: 0,

          // Animation
          animationDuration: 1000,

          // Data Labels (Numbers on top)
          dataLabelSettings: DataLabelSettings(
            isVisible: true,
            labelPosition: ChartDataLabelPosition.outside,
            textStyle:
                Styles.style10Regular.copyWith(color: AppColors.lightGray),
          ),
        ),
      ],
    );
  }
}
