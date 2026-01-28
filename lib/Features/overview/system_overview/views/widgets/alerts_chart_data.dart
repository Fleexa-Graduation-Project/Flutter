import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart'; // Required for BuildContext
import 'package:fleexa/generated/l10n.dart';

class AlertsChartData {
  // Change this from a 'static const Map' to a 'static Map' function
  static Map<String, AlertsPeriodData> getPeriods(BuildContext context) {
    return {
      S.of(context).filterLastWeek: const AlertsPeriodData(
        labels: ['Sat', 'Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri'],
        data: [
          [
            FlSpot(0, 2),
            FlSpot(1, 5),
            FlSpot(2, 0),
            FlSpot(3, 2),
            FlSpot(4, 0),
            FlSpot(5, 3),
            FlSpot(6, 1),
          ],
          [
            FlSpot(0, 2),
            FlSpot(1, 2),
            FlSpot(2, 1),
            FlSpot(3, 1),
            FlSpot(4, 3),
            FlSpot(5, 0),
            FlSpot(6, 0),
          ],
        ],
      ),
      S.of(context).filterLastMonth: const AlertsPeriodData(
        labels: ['1', '5', '10', '15', '20', '25', '30'],
        data: [
          [
            FlSpot(0, 4),
            FlSpot(1, 8),
            FlSpot(2, 2),
            FlSpot(3, 5),
            FlSpot(4, 3),
            FlSpot(5, 7),
            FlSpot(6, 4),
          ],
          [
            FlSpot(0, 1),
            FlSpot(1, 3),
            FlSpot(2, 0),
            FlSpot(3, 2),
            FlSpot(4, 1),
            FlSpot(5, 2),
            FlSpot(6, 1),
          ],
        ],
      ),
    };
  }
}

class AlertsPeriodData {
  final List<String> labels;
  final List<List<FlSpot>> data;

  const AlertsPeriodData({
    required this.labels,
    required this.data,
  });
}
