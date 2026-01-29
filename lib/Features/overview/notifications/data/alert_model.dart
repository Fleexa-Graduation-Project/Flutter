import 'package:fleexa/core/utils/constants/app_strings.dart';

class AlertModel {
  final String title;
  final String description;
  final DateTime dateTime;
  final bool isRead;
  final AlertDeviceType alertDeviceType;
  final AlertType alertType;

  AlertModel({
    required this.title,
    required this.description,
    required this.dateTime,
    required this.alertDeviceType,
    required this.alertType,
    this.isRead = true,
  });
}
