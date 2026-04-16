import 'package:fleexa/core/utils/constants/app_strings.dart';
import 'package:intl/intl.dart';

class AlertHelper {
  static AlertType determineAlertType(String severity) {
    if (severity.toUpperCase() == 'CRITICAL') {
      return AlertType.critical;
    }
    return AlertType.warning;
  }

  static String formatTimeForUI(DateTime time) {
    return DateFormat("hh:mm a").format(time);
  }
}
