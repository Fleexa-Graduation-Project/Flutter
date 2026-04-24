import 'package:fleexa/Features/devices/shared/data/models/telemetry_model.dart';

abstract class DeviceTelemetryState {}

class DeviceTelemetryInitial extends DeviceTelemetryState {}

class DeviceTelemetryLoading extends DeviceTelemetryState {}

class DeviceTelemetryError extends DeviceTelemetryState {
  final String message;
  DeviceTelemetryError({required this.message});
}

class DeviceTelemetryLoaded extends DeviceTelemetryState {
  final TelemetryModel telemetry;
  final String currentPeriod;

  DeviceTelemetryLoaded({
    required this.telemetry,
    required this.currentPeriod,
  });
}
