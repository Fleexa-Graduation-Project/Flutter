class DailyAlertStats {
  final String dayName;
  final int warningCount;
  final int criticalCount;

  DailyAlertStats({
    required this.dayName,
    required this.warningCount,
    required this.criticalCount,
  });

  factory DailyAlertStats.fromJson(Map<String, dynamic> json) {
    return DailyAlertStats(
      dayName: json['day'],
      warningCount: json['warnings'],
      criticalCount: json['critical'],
    );
  }
}
