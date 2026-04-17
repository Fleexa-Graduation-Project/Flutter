import 'package:fleexa/core/utils/constants/app_strings.dart';

class UIAlertModel {
  final String title;
  final String description;
  final DateTime dateTime;
  final String iconPath;
  final AlertSeverity alertSeverity;

  const UIAlertModel({
    required this.title,
    required this.alertSeverity,
    required this.description,
    required this.dateTime,
    required this.iconPath,
  });
}
