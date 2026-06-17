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

    final payload = json['payload'] is Map<String, dynamic>
        ? json['payload'] as Map<String, dynamic>
        : {};

    final String type = json['type'] ?? '';

  
    final String timestampStr = json['timestamp']?.toString() ?? '';
    final parsedTime = DateTime.tryParse(timestampStr) ?? DateTime.now();


    String parsedTitle = payload['title'] ?? 'System Alert';


    String parsedDesc = payload['description'] ?? '';


    if (payload['title'] == null) {
      if (type == 'gas-sensor') {
        parsedTitle = json['severity'] == 'CRITICAL'
            ? 'Gas Spike Detected'
            : 'Gas Level Warning';

        if (parsedDesc.isEmpty) {
          final gasLevel = payload['gas_level'] ?? 'Unknown levels';
          parsedDesc = 'Gas detected at $gasLevel';
        }
      } else if (type == 'door-actuator') {
        parsedTitle = 'Door Alert';

        if (parsedDesc.isEmpty) {
          parsedDesc = payload['lock_state'] == 'UNLOCKED'
              ? 'Door Unlocked'
              : 'Door Locked';
        }
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
