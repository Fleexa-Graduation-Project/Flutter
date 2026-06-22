class AlertModel {
  final String deviceId;
  final String deviceType;
  final String title;
  final DateTime time;
  final String description;
  final String severity;

  AlertModel({
    required this.deviceId,
    required this.deviceType,
    required this.title,
    required this.time,
    required this.description,
    required this.severity,
  });

  factory AlertModel.fromJson(Map<String, dynamic> json) {
    // log("RAW ALERT DATA: $json");
    final payload = json['payload'] is Map<String, dynamic>
        ? json['payload'] as Map<String, dynamic>
        : {};

    final String type = json['type'] ?? '';
    final String rawSeverity = json['severity'] ?? 'WARNING';

    // 1. Ensure severity is in the correct format (e.g., "CRITICAL" or "WARNING")
    final String severityText = rawSeverity.isNotEmpty
        ? '${rawSeverity[0].toUpperCase()}${rawSeverity.substring(1).toLowerCase()}'
        : 'Warning';

    // 2. Edit Time format
    DateTime parsedTime = DateTime.now();
    final rawTimestamp = json['timestamp'];
    if (rawTimestamp != null) {
      if (rawTimestamp is String) {
        String timeString = rawTimestamp;
        if (!timeString.endsWith('Z')) timeString += 'Z';
        parsedTime = DateTime.tryParse(timeString)?.toLocal() ?? DateTime.now();
      } else if (rawTimestamp is int) {
        parsedTime =
            DateTime.fromMillisecondsSinceEpoch(rawTimestamp * 1000).toLocal();
      }
    }

    String parsedTitle = payload['title'] ?? '';
    String parsedDesc = payload['description'] ?? '';

    if (parsedTitle.isEmpty) {
      if (type == 'gas-sensor') {
        parsedTitle = '$severityText Gas Alert';
      } else if (type == 'door-actuator') {
        parsedTitle = '$severityText Door Alert';
      } else {
        parsedTitle = '$severityText System Alert';
      }
    }

    if (type == 'gas-sensor') {
      final gasLevel = payload['gas_level'] ?? payload['ppm'];
      if (gasLevel != null) {
        String formattedGasLevel = gasLevel is num
            ? '${gasLevel.toStringAsFixed(0)} PPM'
            : gasLevel.toString();

        parsedDesc =
            'Level: ${formattedGasLevel.replaceAll(RegExp(r'\s*PPM', caseSensitive: false), '')} PPM';
      } else if (parsedDesc.contains('—')) {
        parsedDesc = parsedDesc.split('—').last.trim();
      }
    } else if (type == 'door-actuator') {
      if (parsedDesc.isNotEmpty) {
        parsedDesc = parsedDesc
            .replaceAll(
                RegExp(r'^(Critical|Warning):\s*', caseSensitive: false), '')
            .replaceAll(
                RegExp(r'^(The\s*)?door\s*(has\s*been\s*|is\s*)?',
                    caseSensitive: false),
                '')
            .trim();

        parsedDesc = parsedDesc.split('.').first.trim();

        if (parsedDesc.isNotEmpty) {
          parsedDesc = parsedDesc[0].toUpperCase() + parsedDesc.substring(1);
        }
      } else {
        parsedDesc = payload['lock_state'] == 'UNLOCKED'
            ? 'Left unlocked'
            : 'Locked unexpectedly';
      }
    }

    return AlertModel(
      deviceId: json['device_id'] ?? '',
      deviceType: type,
      title: parsedTitle,
      time: parsedTime,
      description: parsedDesc,
      severity: json['severity'] ?? 'WARNING',
    );
  }
}
