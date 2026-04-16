import 'package:fleexa/Features/devices/shared/presentation/manager/device_alerts_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repos/device_details_repository.dart';

class DeviceAlertsCubit extends Cubit<DeviceAlertsState> {
  final DeviceDetailsRepository repository;

  DeviceAlertsCubit(this.repository) : super(DeviceAlertsInitial());

  Future<void> loadAlerts(String deviceId) async {
    emit(DeviceAlertsLoading());
    try {
      final alerts = await repository.getDeviceAlerts(deviceId);
      emit(DeviceAlertsLoaded(alerts: alerts));
    } catch (e) {
      emit(DeviceAlertsError(message: 'Failed to load alerts: $e'));
    }
  }
}
