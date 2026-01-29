import 'package:fleexa/Features/devices/sensors/tempreature/presentation/views/widgets/temp_chart_header.dart';
import 'package:fleexa/Features/devices/sensors/tempreature/presentation/views/widgets/temp_chart_style.dart';
import 'package:fleexa/Features/devices/sensors/tempreature/presentation/views/widgets/temp_legend_row.dart';
import 'package:fleexa/core/utils/common_widgets/custom_container.dart';
import 'package:flutter/material.dart';

class TemperatureChart extends StatelessWidget {
  const TemperatureChart({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          TempChartHeader(),
          SizedBox(height: 30),
          AspectRatio(
            aspectRatio: 1.5,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: TempChartStyle(),
            ),
          ),
          SizedBox(height: 12),
          TempLegendRow(),
        ],
      ),
    );
  }
}
