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
  DeviceDetailsLoaded({required this.device});
}
