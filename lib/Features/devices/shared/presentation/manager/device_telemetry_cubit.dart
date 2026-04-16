import 'package:fleexa/Features/devices/shared/data/repos/device_details_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'device_telemetry_state.dart';

class DeviceTelemetryCubit extends Cubit<DeviceTelemetryState> {
  final DeviceDetailsRepository repository;

  DeviceTelemetryCubit(this.repository) : super(DeviceTelemetryInitial());

  Future<void> loadTelemetry(String deviceId, {String period = '7d'}) async {
    emit(DeviceTelemetryLoading());
    try {
      final telemetry = await repository.getDeviceTelemetry(deviceId, period);
      emit(
        DeviceTelemetryLoaded(
          telemetry: telemetry,
          currentPeriod: period,
        ),
      );
    } catch (e) {
      emit(DeviceTelemetryError(message: 'Failed to load chart: $e'));
    }
  }
}
