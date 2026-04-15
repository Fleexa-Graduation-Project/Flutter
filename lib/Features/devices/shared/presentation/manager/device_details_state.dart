import 'package:fleexa/Features/devices/shared/data/models/telemetry_model.dart';

import '../../data/models/device_model.dart';

abstract class DeviceDetailsState {}

class DeviceDetailsInitial extends DeviceDetailsState {}

class DeviceDetailsLoading extends DeviceDetailsState {}

class DeviceDetailsError extends DeviceDetailsState {
  final String message;
  DeviceDetailsError(this.message);
}

class DeviceDetailsLoaded extends DeviceDetailsState {
  final DeviceModel device;
  final TelemetryModel? telemetry;
  final String currentTelemetryPeriod;

  DeviceDetailsLoaded({
    required this.device,
    this.telemetry,
    required this.currentTelemetryPeriod,
  });
}
