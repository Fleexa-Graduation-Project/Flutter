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
    final payload = json['payload'] ?? {};
    final String type = json['type'] ?? '';
    final int timestamp = json['timestamp'] ?? 0;

    // 1. Convert UNIX to DateTime
    final parsedTime = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);

    // 2. Format the title and description based on the device type
    String parsedTitle = payload['title'] ?? 'System Alert';
    String parsedDesc = payload['description'] ?? '';

    if (payload['title'] == null) {
      if (type == 'gas-sensor') {
        parsedTitle = payload['status'] == 'DANGER'
            ? 'Gas Spike Detected'
            : 'Gas Level Warning';
        parsedDesc = '${payload['gas_level'] ?? 0} PPM detected';
      } else if (type == 'door-actuator') {
        parsedTitle = 'Door Alert';
        parsedDesc = payload['lock_state'] == 'UNLOCKED'
            ? 'Door Unlocked'
            : 'Door Locked';
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
