import 'package:fleexa/Features/overview/notifications/data/alert_model.dart';
import '../../../../../core/utils/constants/app_strings.dart';

final List<AlertModel> notifications = [
  // ───────── Door Lock (Critical) ─────────
  AlertModel(
      title: 'Door unlocked for 10 mins',
      description: 'Unlocked during night hours',
      dateTime: DateTime.now().subtract(const Duration(minutes: 15)),
      alertDeviceType: AlertDeviceType.doorLock,
      alertType: AlertType.critical,
      isRead: false),
  AlertModel(
    title: 'Door forced open',
    description: 'Unusual force detected',
    dateTime: DateTime.now().subtract(const Duration(hours: 1)),
    alertDeviceType: AlertDeviceType.doorLock,
    alertType: AlertType.critical,
    isRead: false,
  ),
  AlertModel(
    title: 'Multiple unlock attempts',
    description: '5 failed attempts detected',
    dateTime: DateTime.now().subtract(const Duration(hours: 3)),
    alertDeviceType: AlertDeviceType.doorLock,
    alertType: AlertType.critical,
    isRead: false,
  ),
  AlertModel(
    title: 'Door opened remotely',
    description: 'Unlocked from mobile app',
    dateTime: DateTime.now().subtract(const Duration(hours: 6)),
    alertDeviceType: AlertDeviceType.doorLock,
    alertType: AlertType.critical,
    isRead: false,
  ),

  // ───────── Door Lock (Warning) ─────────
  AlertModel(
    title: 'Door left open',
    description: 'Left open for more than 7 mins',
    dateTime: DateTime.now().subtract(const Duration(hours: 8)),
    alertDeviceType: AlertDeviceType.doorLock,
    alertType: AlertType.warning,
  ),
  AlertModel(
    title: 'Auto-lock disabled',
    description: 'Auto-lock turned off',
    dateTime: DateTime.now().subtract(const Duration(hours: 12)),
    alertDeviceType: AlertDeviceType.doorLock,
    alertType: AlertType.warning,
  ),
  AlertModel(
    title: 'Door unlocked',
    description: 'Unlocked manually',
    dateTime: DateTime.now().subtract(const Duration(days: 1, hours: 2)),
    alertDeviceType: AlertDeviceType.doorLock,
    alertType: AlertType.warning,
  ),
  AlertModel(
    title: 'Lock battery low',
    description: 'Battery below 20%',
    dateTime: DateTime.now().subtract(const Duration(days: 1, hours: 6)),
    alertDeviceType: AlertDeviceType.doorLock,
    alertType: AlertType.warning,
  ),

  // ───────── Gas Sensor (Critical) ─────────
  AlertModel(
    title: 'Gas leak detected',
    description: 'Gas level exceeded safe limit',
    dateTime: DateTime.now().subtract(const Duration(minutes: 5)),
    alertDeviceType: AlertDeviceType.gasSensor,
    alertType: AlertType.critical,
  ),
  AlertModel(
    title: 'High gas concentration',
    description: 'Detected 320 PPM',
    dateTime: DateTime.now().subtract(const Duration(hours: 1)),
    alertDeviceType: AlertDeviceType.gasSensor,
    alertType: AlertType.critical,
  ),
  AlertModel(
    title: 'Dangerous gas levels',
    description: 'Immediate ventilation required',
    dateTime: DateTime.now().subtract(const Duration(hours: 4)),
    alertDeviceType: AlertDeviceType.gasSensor,
    alertType: AlertType.critical,
  ),
  AlertModel(
    title: 'Gas leak near kitchen',
    description: 'Possible stove leak detected',
    dateTime: DateTime.now().subtract(const Duration(hours: 7)),
    alertDeviceType: AlertDeviceType.gasSensor,
    alertType: AlertType.critical,
  ),

  // ───────── Gas Sensor (Warning) ─────────
  AlertModel(
    title: 'Gas level rising',
    description: 'Gas concentration increasing',
    dateTime: DateTime.now().subtract(const Duration(hours: 9)),
    alertDeviceType: AlertDeviceType.gasSensor,
    alertType: AlertType.warning,
  ),
  AlertModel(
    title: 'Moderate gas detected',
    description: '145 PPM detected',
    dateTime: DateTime.now().subtract(const Duration(hours: 13)),
    alertDeviceType: AlertDeviceType.gasSensor,
    alertType: AlertType.warning,
  ),
  AlertModel(
    title: 'Gas sensor warning',
    description: 'Check ventilation',
    dateTime: DateTime.now().subtract(const Duration(days: 1)),
    alertDeviceType: AlertDeviceType.gasSensor,
    alertType: AlertType.warning,
  ),
  AlertModel(
    title: 'Temporary gas spike',
    description: 'Short spike detected',
    dateTime: DateTime.now().subtract(const Duration(days: 1, hours: 4)),
    alertDeviceType: AlertDeviceType.gasSensor,
    alertType: AlertType.warning,
  ),

  // ───────── Mixed Older Alerts ─────────
  AlertModel(
    title: 'Door unlocked',
    description: 'Unlocked for cleaning service',
    dateTime: DateTime.now().subtract(const Duration(days: 2)),
    alertDeviceType: AlertDeviceType.doorLock,
    alertType: AlertType.warning,
  ),
  AlertModel(
    title: 'Gas sensor offline',
    description: 'No data received for 10 mins',
    dateTime: DateTime.now().subtract(const Duration(days: 2, hours: 3)),
    alertDeviceType: AlertDeviceType.gasSensor,
    alertType: AlertType.warning,
  ),
  AlertModel(
    title: 'Door re-locked',
    description: 'Door secured successfully',
    dateTime: DateTime.now().subtract(const Duration(days: 3)),
    alertDeviceType: AlertDeviceType.doorLock,
    alertType: AlertType.warning,
  ),
  AlertModel(
    title: 'Gas levels normalized',
    description: 'Back to safe range',
    dateTime: DateTime.now().subtract(const Duration(days: 4)),
    alertDeviceType: AlertDeviceType.gasSensor,
    alertType: AlertType.warning,
  ),
];
