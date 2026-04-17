import 'package:fleexa/core/utils/constants/app_strings.dart';

class NotificationModel {
  final String id;
  final AlertDeviceType deviceType;
  final AlertSeverity severity;
  final String title;
  final String description;
  final DateTime timestamp;

  NotificationModel({
    required this.id,
    required this.deviceType,
    required this.severity,
    required this.title,
    required this.description,
    required this.timestamp,
  });
}
