import 'package:fleexa/Features/devices/sensors/light/data/model/light_chart_model.dart';
import 'package:fleexa/core/utils/constants/app_strings.dart';

/// Last 24 Hours
final List<LightChartModel> light24hData = [
  LightChartModel('00:00', 18),
  LightChartModel('04:00', 19),
  LightChartModel('08:00', 20),
  LightChartModel('12:00', 200),
  LightChartModel('16:00', 28),
  LightChartModel('20:00', 22),
];

/// Last Week
final List<LightChartModel> lightWeekData = [
  LightChartModel('Mon', 300),
  LightChartModel('Tue', 450),
  LightChartModel('Wed', 500),
  LightChartModel('Thu', 420),
  LightChartModel('Fri', 480),
  LightChartModel('Sat', 350),
  LightChartModel('Sun', 280),
];

/// Last Month (4 weeks)
final List<LightChartModel> lightMonthData = [
  LightChartModel('W1', 400),
  LightChartModel('W2', 520),
  LightChartModel('W3', 480),
  LightChartModel('W4', 430),
];

/// Helper
List<LightChartModel> getLightData(TimeRange range) {
  switch (range) {
    case TimeRange.lastDay:
      return light24hData;
    case TimeRange.lastWeek:
      return lightWeekData;
    case TimeRange.lastMonth:
      return lightMonthData;
  }
}
