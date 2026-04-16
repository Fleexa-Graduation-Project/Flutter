class TempModel {
  final String deviceId;
  final String type;
  final String status;
  final String operationalState;
  final String health;
  final double temp;
  final int lastSeenAt;
  

  TempModel({
    required this.deviceId,
    required this.type,
    required this.status,
    required this.operationalState,
    required this.health,
    required this.temp,
    required this.lastSeenAt,
  });

  factory TempModel.fromJson(Map<String, dynamic> json) {
    return TempModel(
      deviceId: json['device_id'] ?? '',
      type: json['type'] ?? '',
      status: json['status'] ?? '',
      operationalState: json['operational_state'] ?? '',
      health: json['health'] ?? '',
      temp: (json['payload']?['temp'] ?? 0).toDouble(),
      lastSeenAt: json['last_seen_at'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'device_id': deviceId,
      'type': type,
      'status': status,
      'operational_state': operationalState,
      'health': health,
      'payload': {
        'temp': temp,
      },
      'last_seen_at': lastSeenAt,
    };
  }
}