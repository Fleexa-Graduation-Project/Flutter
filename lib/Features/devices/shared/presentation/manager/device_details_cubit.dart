import 'package:fleexa/Features/devices/shared/data/models/telemetry_model.dart';
import 'package:fleexa/Features/devices/shared/data/repos/device_details_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'device_details_state.dart';

class DeviceDetailsCubit extends Cubit<DeviceDetailsState> {
  final DeviceDetailsRepository repository;

  DeviceDetailsCubit(this.repository) : super(DeviceDetailsInitial());

  // 1. Called when the user first opens the Device Details page
  Future<void> loadDeviceData(String deviceId, {String period = '7d'}) async {
    emit(DeviceDetailsLoading());
    try {
      final device = await repository.getDeviceDetails(deviceId);
      TelemetryModel? telemetry;

      if (device.type != 'door-actuator') {
        telemetry = await repository.getDeviceTelemetry(deviceId, period);
      }

      emit(DeviceDetailsLoaded(
        device: device,
        telemetry: telemetry,
        currentTelemetryPeriod: period,
      ));
    } catch (e) {
      emit(DeviceDetailsError(e.toString()));
    }
  }

  // 2. Called when the user changes the Insights Dropdown (e.g. to "1m")
  Future<void> changeTelemetryPeriod(String deviceId, String newPeriod) async {
    if (state is DeviceDetailsLoaded){
      final currentState = state as DeviceDetailsLoaded;
      emit(DeviceDetailsLoading());
      try {
        // Fetch JUST the new chart data
        final newTelemetry = await repository.getDeviceTelemetry(deviceId, newPeriod);

        // Re-emit the exact same device Gauge data, but with the new Chart data!
        emit(DeviceDetailsLoaded(
          device: currentState.device,
          telemetry: newTelemetry,
          currentTelemetryPeriod: newPeriod,
        ));
      } catch (e) {
        // If the chart fails to load, we show an error
        emit(DeviceDetailsError('Failed to load chart: $e'));
      }
    }
  }
}
