import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart'; // Required for BuildContext
import 'package:fleexa/generated/l10n.dart';

class AlertsChartData {
  // Change this from a 'static const Map' to a 'static Map' function
  static Map<String, AlertsPeriodData> getPeriods(BuildContext context) {
    return {
      S.of(context).filterLastWeek: AlertsPeriodData(
        labels: ['Sat', 'Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri'],
        data: [
          [
            const FlSpot(0, 2),
            const FlSpot(1, 5),
            const FlSpot(2, 0),
            const FlSpot(3, 2),
            const FlSpot(4, 0),
            const FlSpot(5, 3),
            const FlSpot(6, 1),
          ],
          [
            const FlSpot(0, 2),
            const FlSpot(1, 2),
            const FlSpot(2, 1),
            const FlSpot(3, 1),
            const FlSpot(4, 3),
            const FlSpot(5, 0),
            const FlSpot(6, 0),
          ],
        ],
      ),
      S.of(context).filterLastMonth: AlertsPeriodData(
        labels: ['1', '5', '10', '15', '20', '25', '30'],
        data: [
          [
            const FlSpot(0, 4),
            const FlSpot(1, 8),
            const FlSpot(2, 2),
            const FlSpot(3, 5),
            const FlSpot(4, 3),
            const FlSpot(5, 7),
            const FlSpot(6, 4),
          ],
          [
            const FlSpot(0, 1),
            const FlSpot(1, 3),
            const FlSpot(2, 0),
            const FlSpot(3, 2),
            const FlSpot(4, 1),
            const FlSpot(5, 2),
            const FlSpot(6, 1),
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