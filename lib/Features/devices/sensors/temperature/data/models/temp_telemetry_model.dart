class TempTelemetryModel {
  final String deviceId;
  final String period;
  final String source;
  final List<TempPoint> data;
  final double min;
  final double max;
  final double average;

  TempTelemetryModel({
    required this.deviceId,
    required this.period,
    required this.source,
    required this.data,
    required this.min,
    required this.max,
    required this.average,
  });

  factory TempTelemetryModel.fromJson(Map<String, dynamic> json) {
    return TempTelemetryModel(
      deviceId: json['device_id'],
      period: json['period'],
      source: json['source'],
      data: (json['data'] as List)
          .map((e) => TempPoint.fromJson(e))
          .toList(),
      min: (json['min'] as num).toDouble(),
      max: (json['max'] as num).toDouble(),
      average: (json['average'] as num).toDouble(),
    );
  }
}

class TempPoint {
  final String label;
  final double value;

  TempPoint({
    required this.label,
    required this.value,
  });

  factory TempPoint.fromJson(Map<String, dynamic> json) {
    return TempPoint(
      label: json['label'],
      value: (json['value'] as num).toDouble(),
    );
  }
}