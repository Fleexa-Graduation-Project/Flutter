import 'package:fleexa/core/utils/common_widgets/temp_chart/data/model/temp_stats.dart';

import '../../../constants/app_strings.dart';

List<TempStats> getTempStats(TimeRange range) {
  if (range == TimeRange.lastDay) {
    return [
      TempStats(timeLabel: '00:00', temperature: 1),
      TempStats(timeLabel: '02:00', temperature: 3),
      TempStats(timeLabel: '04:00', temperature: 3),
      TempStats(timeLabel: '06:00', temperature: 5),
      TempStats(timeLabel: '08:00', temperature: 5.5),
      TempStats(timeLabel: '10:00', temperature: 6),
      TempStats(timeLabel: '12:00', temperature: 10),
      TempStats(timeLabel: '14:00', temperature: 12),
      TempStats(timeLabel: '16:00', temperature: 15),
      TempStats(timeLabel: '18:00', temperature: 18),
      TempStats(timeLabel: '20:00', temperature: 20),
      TempStats(timeLabel: '22:00', temperature: 22),
    ];
  } else if (range == TimeRange.lastMonth) {
    // 4 Weeks Data
    return [
      TempStats(timeLabel: 'W1', temperature: 25.5),
      TempStats(timeLabel: 'W2', temperature: 30.2),
      TempStats(timeLabel: 'W3', temperature: 18.4),
      TempStats(timeLabel: 'W4', temperature: 22.1),
    ];
  } else {
    // 7 Days Data (Last Week)
    return [
      TempStats(timeLabel: 'Sat', temperature: 12.5),
      TempStats(timeLabel: 'Sun', temperature: 32.1),
      TempStats(timeLabel: 'Mon', temperature: 28.5),
      TempStats(timeLabel: 'Tue', temperature: 30.2),
      TempStats(timeLabel: 'Wed', temperature: 25.0),
      TempStats(timeLabel: 'Thu', temperature: 18.4),
      TempStats(timeLabel: 'Fri', temperature: 5.2),
    ];
  }
}
