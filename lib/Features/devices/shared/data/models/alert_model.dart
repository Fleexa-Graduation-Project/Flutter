class AlertModel {
  final String title;
  final String time;
  final String description;

  AlertModel({
    required this.title,
    required this.time,
    required this.description,
  });

  factory AlertModel.fromJson(Map<String, dynamic> json) {
    final payload = json['payload'] ?? {};
    
    return AlertModel(
      title: payload['event_title'] ?? 'Alert',
      time: payload['time_string'] ?? '',
      // For Gas it's 'gas_level', for Door it's 'description'
      description: payload['description'] ?? '${payload['gas_level'] ?? ''} PPM',
    );
  }
}
