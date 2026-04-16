class AlertModel {
  final String title;
  final DateTime time;
  final String description;
  final String severity;

  AlertModel({
    required this.title,
    required this.time,
    required this.description,
    required this.severity,
  });

  factory AlertModel.fromJson(Map<String, dynamic> json) {
    final payload = json['payload'] ?? {};
    final String deviceType = json['type'] ?? '';
    final int timestamp = json['timestamp'] ?? 0;

    // 1. Convert UNIX timestamp to local DateTime natively
    // Multiply by 1000 because Dart uses milliseconds, but Go uses seconds
    final parsedTime = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);

    // 2. Format the title and description based on the device type
    String parsedTitle = 'System Alert';
    String parsedDesc = '';

    if (deviceType == 'gas-sensor') {
      parsedTitle = payload['status'] == 'DANGER' ? 'Gas Spike Detected' : 'Gas Level Warning';
      parsedDesc = '${payload['gas_level'] ?? 0} PPM';
    } else if (deviceType == 'door-actuator') {
      parsedTitle = 'Door Alert';
      parsedDesc = payload['lock_state'] == 'UNLOCKED' ? 'Door Unlocked' : 'Door Locked';
    }

    return AlertModel(
      title: parsedTitle,
      time: parsedTime,
      description: parsedDesc,
      severity: json['severity'] ?? 'WARNING',
    );
  }
}
