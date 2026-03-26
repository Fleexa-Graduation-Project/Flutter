import 'package:fleexa/Features/overview/system_overview/data/models/daily_alert_stats.dart';

import '../../../../core/utils/constants/app_strings.dart';
import 'models/energy_stats.dart';

List<DailyAlertStats> getWeeklyStats(TimeRange range) {
  if (range == TimeRange.lastDay) {
    return [
      DailyAlertStats(dayName: '00:00', warningCount: 0, criticalCount: 0),
      DailyAlertStats(dayName: '02:00', warningCount: 2, criticalCount: 0),
      DailyAlertStats(dayName: '04:00', warningCount: 2, criticalCount: 0),
      DailyAlertStats(dayName: '06:00', warningCount: 2, criticalCount: 0),
      DailyAlertStats(dayName: '08:00', warningCount: 2, criticalCount: 0),
      DailyAlertStats(dayName: '10:00', warningCount: 3, criticalCount: 0),
      DailyAlertStats(dayName: '12:00', warningCount: 3, criticalCount: 1),
      DailyAlertStats(dayName: '14:00', warningCount: 3, criticalCount: 1),
      DailyAlertStats(dayName: '16:00', warningCount: 4, criticalCount: 2),
      DailyAlertStats(dayName: '18:00', warningCount: 4, criticalCount: 2),
      DailyAlertStats(dayName: '20:00', warningCount: 4, criticalCount: 2),
      DailyAlertStats(dayName: '22:00', warningCount: 4, criticalCount: 2),
    ];
  } else if (range == TimeRange.lastMonth) {
    return [
      DailyAlertStats(dayName: 'W1', warningCount: 10, criticalCount: 5),
      DailyAlertStats(dayName: 'W2', warningCount: 15, criticalCount: 8),
      DailyAlertStats(dayName: 'W3', warningCount: 8, criticalCount: 2),
      DailyAlertStats(dayName: 'W4', warningCount: 12, criticalCount: 6),
    ];
  } else {
    // Default: Last Week (7 items)
    return [
      DailyAlertStats(dayName: 'Sat', warningCount: 2, criticalCount: 2),
      DailyAlertStats(dayName: 'Sun', warningCount: 5, criticalCount: 2),
      DailyAlertStats(dayName: 'Mon', warningCount: 0, criticalCount: 1),
      DailyAlertStats(dayName: 'Tue', warningCount: 2, criticalCount: 1),
      DailyAlertStats(dayName: 'Wed', warningCount: 0, criticalCount: 3),
      DailyAlertStats(dayName: 'Thu', warningCount: 3, criticalCount: 0),
      DailyAlertStats(dayName: 'Fri', warningCount: 1, criticalCount: 0),
    ];
  }
}

List<EnergyStats> getEnergyStats(TimeRange range) {
  if (range == TimeRange.lastDay) {
    return [
      EnergyStats(label: '00:00', value: 1),
      EnergyStats(label: '02:00', value: 3),
      EnergyStats(label: '04:00', value: 3),
      EnergyStats(label: '06:00', value: 5),
      EnergyStats(label: '08:00', value: 5.5),
      EnergyStats(label: '10:00', value: 6),
      EnergyStats(label: '12:00', value: 10),
      EnergyStats(label: '14:00', value: 12),
      EnergyStats(label: '16:00', value: 15),
      EnergyStats(label: '18:00', value: 18),
      EnergyStats(label: '20:00', value: 20),
      EnergyStats(label: '22:00', value: 22),
    ];
  } else if (range == TimeRange.lastMonth) {
    // 4 Weeks Data
    return [
      EnergyStats(label: 'Week 1', value: 25.5),
      EnergyStats(label: 'Week 2', value: 30.2),
      EnergyStats(label: 'Week 3', value: 18.4),
      EnergyStats(label: 'Week 4', value: 22.1),
    ];
  } else {
    // 7 Days Data (Last Week)
    return [
      EnergyStats(label: 'Sat', value: 12.5),
      EnergyStats(label: 'Sun', value: 32.1),
      EnergyStats(label: 'Mon', value: 28.5),
      EnergyStats(label: 'Tue', value: 30.2),
      EnergyStats(label: 'Wed', value: 25.0),
      EnergyStats(label: 'Thu', value: 18.4),
      EnergyStats(label: 'Fri', value: 5.2),
    ];
  }
}
