import '../../data/models/alert_model.dart';

abstract class DeviceAlertsState {}

class DeviceAlertsInitial extends DeviceAlertsState {}

class DeviceAlertsLoading extends DeviceAlertsState {}

class DeviceAlertsError extends DeviceAlertsState {
  final String message;
  DeviceAlertsError({required this.message});
}

class DeviceAlertsLoaded extends DeviceAlertsState {
  final List<AlertModel> alerts;
  DeviceAlertsLoaded({required this.alerts});
}
