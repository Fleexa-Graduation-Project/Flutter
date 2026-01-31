import 'package:fl_chart/fl_chart.dart';
import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:flutter/material.dart';
import 'energy_chart_styles.dart';

class EnergyBarChart extends StatelessWidget {
  const EnergyBarChart({
    super.key,
    required this.values,
    required this.labels,
  });

  final List<double> values;
  final List<String> labels;

  static const double _maxY = 40;

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        maxY: _maxY,
        gridData: EnergyChartStyles.grid,
        borderData: EnergyChartStyles.border,
        barGroups: _barGroups,
        titlesData: _titles,
        barTouchData: BarTouchData(
          enabled: false,
          touchTooltipData: BarTouchTooltipData(
            getTooltipColor: (_) => Colors.transparent,
            tooltipPadding: EdgeInsets.zero,
            tooltipMargin: 8,
            getTooltipItem: (group, groupIndex, rod, rodIndex) {
              return BarTooltipItem(
                rod.toY.toString(),
                Styles.style12Medium.copyWith(color: AppColors.white50),
              );
            },
          ),
        ),
      ),
    );
  }

  List<BarChartGroupData> get _barGroups {
    return List.generate(values.length, (i) {
      return BarChartGroupData(
        x: i,
        showingTooltipIndicators: const [0],
        barRods: [
          BarChartRodData(
            toY: values[i],
            width: 28,
            color: AppColors.wineRed,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(2)),
            backDrawRodData: BackgroundBarChartRodData(
              show: true,
              toY: _maxY,
              color: Colors.white.withOpacity(0.05),
            ),
          ),
        ],
      );
    });
  }

  FlTitlesData get _titles => FlTitlesData(
        topTitles: const AxisTitles(),
        rightTitles: const AxisTitles(),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 8,
            reservedSize: 30,
            getTitlesWidget: (val, _) => Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Text(
                val.toInt().toString(),
                style: Styles.style12Medium.copyWith(color: AppColors.white80),
              ),
            ),
          ),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: (val, _) {
              final index = val.toInt();
              return index >= 0 && index < labels.length
                  ? Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        labels[index],
                        style: Styles.style12Medium
                            .copyWith(color: AppColors.white80),
                      ),
                    )
                  : const SizedBox();
            },
          ),
        ),
      );
}
