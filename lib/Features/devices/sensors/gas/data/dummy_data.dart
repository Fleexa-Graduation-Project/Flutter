import 'package:fleexa/Features/devices/sensors/gas/data/models/gas_chart_model.dart';
import 'package:fleexa/core/utils/constants/app_strings.dart';

/// Last 24 Hours
final List<GasChartModel> gas24hData = [
  GasChartModel('00:00', 18),
  GasChartModel('04:00', 19),
  GasChartModel('08:00', 20),
  GasChartModel('12:00', 24),
  GasChartModel('16:00', 28),
  GasChartModel('20:00', 22),
];

/// Last Week (7 days)
final List<GasChartModel> gasWeekData = [
  GasChartModel('Mon', 20),
  GasChartModel('Tue', 24),
  GasChartModel('Wed', 22),
  GasChartModel('Thu', 26),
  GasChartModel('Fri', 28),
  GasChartModel('Sat', 25),
  GasChartModel('Sun', 23),
];

/// Last Month (4 weeks)
final List<GasChartModel> gasMonthData = [
  GasChartModel('W1', 22),
  GasChartModel('W2', 25),
  GasChartModel('W3', 27),
  GasChartModel('W4', 24),
];

/// Helper to switch data based on range
List<GasChartModel> getGasData(TimeRange range) {
  switch (range) {
    case TimeRange.lastDay:
      return gas24hData;
    case TimeRange.lastWeek:
      return gasWeekData;
    case TimeRange.lastMonth:
      return gasMonthData;
  }
}
