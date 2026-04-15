import 'package:flutter/material.dart';
import 'package:fleexa/generated/l10n.dart';

class EnergyChartPeriodData {
  final List<String> labels;
  final List<double> values;

  const EnergyChartPeriodData({
    required this.labels,
    required this.values,
  });


  double get maxValue => values.isEmpty ? 0 : values.reduce((a, b) => a > b ? a : b);
}

class EnergyChartData {

  static Map<String, EnergyChartPeriodData> getPeriods(BuildContext context) {
    return {
      S.of(context).filterLastWeek: const EnergyChartPeriodData(
        labels: ['Sat', 'Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri'],
        values: [12.5, 32.1, 28.5, 30.2, 25.0, 18.4, 5.2],
      ),
      S.of(context).filterLastMonth: const EnergyChartPeriodData(
        labels: ['W1', 'W2', 'W3', 'W4'],
        values: [22.0, 35.5, 15.2, 28.1],
      ),
    };
  }
}