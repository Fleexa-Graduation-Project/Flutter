import 'package:fleexa/Features/devices/sensors/light/data/model/light_chart_model.dart';
import 'package:fleexa/core/utils/constants/app_strings.dart';

/// Last Day
final List<LightChartModel> lightDayData = [
  LightChartModel('6AM', 20),
  LightChartModel('9AM', 200),
  LightChartModel('12PM', 650),
  LightChartModel('3PM', 500),
  LightChartModel('6PM', 180),
  LightChartModel('9PM', 40),
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
      return lightDayData;
    case TimeRange.lastWeek:
      return lightWeekData;
    case TimeRange.lastMonth:
      return lightMonthData;
  }
}