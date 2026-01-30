import 'package:fleexa/Features/devices/actuators/ac/data/dummy_chart_data.dart';
import 'package:fleexa/Features/devices/actuators/ac/data/temp_chart_data.dart';
import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../../../core/utils/constants/styles.dart';

class TempChart extends StatelessWidget {
  const TempChart({super.key});

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      plotAreaBorderWidth: 0,
      plotAreaBorderColor: Colors.transparent,

      // X-Axis (Time)
      primaryXAxis: CategoryAxis(
        majorGridLines:
            const MajorGridLines(width: 1, color: Color(0xFF333333)),
        labelStyle: Styles.style10Regular.copyWith(color: AppColors.coolGray),
        axisLine: const AxisLine(width: 0),
        tickPosition: TickPosition.inside,
      ),

      // Y-Axis (Temperature)
      primaryYAxis: NumericAxis(
        minimum: 0,
        maximum: 40,
        interval: 8,
        majorGridLines:
            const MajorGridLines(width: 1, color: Color(0xFF333333)),
        labelStyle: Styles.style12Regular.copyWith(color: AppColors.coolGray),
        axisLine: const AxisLine(width: 0),
        tickPosition: TickPosition.inside,
      ),
      series: <CartesianSeries>[
        SplineSeries<TempChartData, String>(
          dataSource: tempchartData,
          xValueMapper: (TempChartData data, _) => data.time,
          yValueMapper: (TempChartData data, _) => data.temp,

          // Line Styling
          color: AppColors.burgundy, // Red color
          width: 2,

          // The small dots on the line
          markerSettings: const MarkerSettings(
            isVisible: true,
            height: 4,
            width: 4,
            color: AppColors.burgundy,
            borderColor: AppColors.burgundy,
          ),

          // The numbers above the dots (24, 20, etc.)
          dataLabelSettings: DataLabelSettings(
            isVisible: true,
            textStyle:
                Styles.style10Regular.copyWith(color: AppColors.coolGray),
            labelAlignment: ChartDataLabelAlignment.top,
            margin: const EdgeInsets.all(0),
          ),
        ),
      ],
    );
  }
}
