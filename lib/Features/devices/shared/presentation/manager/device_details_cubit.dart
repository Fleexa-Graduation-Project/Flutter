import 'package:fleexa/Features/devices/shared/data/repos/device_details_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/error_handler.dart';
import 'device_details_state.dart';

class DeviceDetailsCubit extends Cubit<DeviceDetailsState> {
  final DeviceDetailsRepository repository;

  DeviceDetailsCubit(this.repository) : super(DeviceDetailsInitial());

  Future<void> loadDeviceData(String deviceId, {String period = '7d'}) async {
    emit(DeviceDetailsLoading());
    try {
      final device = await repository.getDeviceDetails(deviceId);
      emit(DeviceDetailsLoaded(device: device));
    } catch (e) {
      final type = ErrorHandler.getErrorType(e);
      emit(DeviceDetailsError(errorType: type, message: e.toString()));
    }
  }
}
