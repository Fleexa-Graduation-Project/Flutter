import '../../../../devices/shared/data/models/ui_alert_model.dart';

abstract class NotificationsState {}

class NotificationsInitial extends NotificationsState {}

class NotificationsLoading extends NotificationsState {}

class NotificationsError extends NotificationsState {
  final String message;
  NotificationsError(this.message);
}

class NotificationsLoaded extends NotificationsState {
  final Map<String, List<UIAlertModel>> groupedAlerts;
  NotificationsLoaded(this.groupedAlerts);
}
