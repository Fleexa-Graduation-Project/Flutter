import '../../../../../core/utils/constants/app_strings.dart';
import 'models/usage_stats.dart';

List<UsageStats> getACUsageData(TimeRange range) {
  if (range == TimeRange.lastDay) {
    return [
      UsageStats(timeLabel: "00:00", usageHours: 1),
      UsageStats(timeLabel: "04:00", usageHours: 3),
      UsageStats(timeLabel: "08:00", usageHours: 5),
      UsageStats(timeLabel: "12:00", usageHours: 5),
      UsageStats(timeLabel: "16:00", usageHours: 5),
      UsageStats(timeLabel: "20:00", usageHours: 6),
    ];
  } else if (range == TimeRange.lastMonth) {
    // 4 Weeks Data
    return [
      UsageStats(timeLabel: 'W1', usageHours: 20),
      UsageStats(timeLabel: 'W2', usageHours: 15),
      UsageStats(timeLabel: 'W3', usageHours: 18.4),
      UsageStats(timeLabel: 'W4', usageHours: 22.1),
    ];
  } else {
    // 7 Days Data (Last Week)
    return [
      UsageStats(timeLabel: 'Sat', usageHours: 12.5),
      UsageStats(timeLabel: 'Sun', usageHours: 20),
      UsageStats(timeLabel: 'Mon', usageHours: 10),
      UsageStats(timeLabel: 'Tue', usageHours: 2),
      UsageStats(timeLabel: 'Wed', usageHours: 4),
      UsageStats(timeLabel: 'Thu', usageHours: 13),
      UsageStats(timeLabel: 'Fri', usageHours: 16),
    ];
  }
}
