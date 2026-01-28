import 'package:fl_chart/fl_chart.dart';
import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'alerts_chart_styles.dart';
import 'package:flutter/material.dart';

class AlertsLineChart extends StatelessWidget {
  const AlertsLineChart({
    super.key,
    required this.data,
    required this.labels,
  });

  final List<List<FlSpot>> data;
  final List<String> labels;

  @override
  Widget build(BuildContext context) {
    return LineChart(
      duration: const Duration(milliseconds: 350),
      curve: Curves.easeInOut,
      _chartData,
    );
  }

  LineChartData get _chartData => LineChartData(
        minY: 0,
        maxY: 10,
        gridData: AlertsChartStyles.grid,
        borderData: AlertsChartStyles.border,
        titlesData: _titles,
        lineTouchData: _lineTouchData,
        lineBarsData: [
          _line(Colors.orange.shade800, data[0]),
          _line(Colors.red.shade900, data[1]),
        ],
      );

  LineChartBarData _line(Color color, List<FlSpot> spots) {
    return LineChartBarData(
      spots: spots,
      isCurved: false,
      color: color,
      barWidth: 2,
      dotData: FlDotData(
        show: true,
        getDotPainter: (_, __, ___, ____) => FlDotCirclePainter(
          radius: 3,
          color: color,
          strokeWidth: 1,
          strokeColor: Colors.white24,
        ),
      ),
    );
  }

  LineTouchData get _lineTouchData => LineTouchData(
        enabled: true,
        touchTooltipData: LineTouchTooltipData(
          getTooltipColor: (_) => Colors.transparent,
          tooltipPadding: EdgeInsets.zero,
          tooltipMargin: 9,
        ),
      );

  FlTitlesData get _titles => FlTitlesData(
        topTitles: const AxisTitles(),
        rightTitles: const AxisTitles(),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 2,
            reservedSize: 30,
            getTitlesWidget: (value, _) => Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Text(
                value.toInt().toString(),
                style: Styles.style12Regular.copyWith(color: AppColors.white80),
              ),
            ),
          ),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            reservedSize: 30,
            getTitlesWidget: (value, _) {
              final index = value.toInt();
              return index >= 0 && index < labels.length
                  ? Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        labels[index],
                        style: Styles.style12Regular
                            .copyWith(color: AppColors.white80),
                      ),
                    )
                  : const SizedBox();
            },
          ),
        ),
      );
}
