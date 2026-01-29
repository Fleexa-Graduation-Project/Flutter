import 'package:fleexa/Features/overview/notifications/data/alert_model.dart';

import '../../../../../core/utils/constants/app_strings.dart';

final List<AlertModel> alerts = [
  AlertModel(
    title: 'Door unlocked for 10 mins',
    description: 'Unlocked during night',
    dateTime: DateTime.now().subtract(const Duration(hours: 2)),
    alertDeviceType: AlertDeviceType.doorLock,
    alertType: AlertType.critical,
    isRead: false,
  ),
  AlertModel(
    title: 'Door left open',
    description: 'Left open for > 7 mins',
    dateTime: DateTime.now().subtract(const Duration(days: 1, hours: 3)),
    alertDeviceType: AlertDeviceType.doorLock,
    alertType: AlertType.warning,
    isRead: false,
  ),
];
