import 'package:fleexa/core/utils/constants/app_strings.dart';

class GasSenorAlertModel {
  final String title;
  final String description;
  final DateTime dateTime;
  final String iconPath;
  final AlertType alertType;

  const GasSenorAlertModel({
    required this.title,
    required this.alertType,
    required this.description,
    required this.dateTime,
    required this.iconPath,
  });
}
