import 'package:fleexa/core/utils/constants/app_strings.dart';

class UIAlertModel {
  final String title;
  final String description;
  final DateTime dateTime;
  final String iconPath;
  final AlertType alertType;

  const UIAlertModel({
    required this.title,
    required this.alertType,
    required this.description,
    required this.dateTime,
    required this.iconPath,
  });
}
