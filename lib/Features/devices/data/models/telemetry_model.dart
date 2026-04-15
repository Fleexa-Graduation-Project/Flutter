import 'chart_point_model.dart';

class TelemetryModel {
  final String period;
  final List<ChartPointModel> data;
  final double min;
  final double max;
  final double average;

  TelemetryModel({
    required this.period,
    required this.data,
    required this.min,
    required this.max,
    required this.average,
  });

  factory TelemetryModel.fromJson(Map<String, dynamic> json) {
    return TelemetryModel(
      period: json['period'] ?? '',
      data: (json['data'] as List<dynamic>?)
              ?.map((item) => ChartPointModel.fromJson(item))
              .toList() ??
          [],
      min: (json['min'] ?? 0).toDouble(),
      max: (json['max'] ?? 0).toDouble(),
      average: (json['average'] ?? 0).toDouble(),
    );
  }
}
