import 'package:fleexa/Features/devices/actuators/door_lock/presentation/manager/door_lock_state.dart';
import 'package:fleexa/Features/devices/shared/data/repos/device_details_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoorLockCubit extends Cubit<DoorLockState> {
  final DeviceDetailsRepository repository;
  final String deviceId;

  bool isCurrentlyLocked = true;

  DoorLockCubit({required this.repository, required this.deviceId})
      : super(DoorLockInitial());

  void initializeState(bool isLockedFromApi) {
    isCurrentlyLocked = isLockedFromApi;
    emit(DoorLockUpdated(isCurrentlyLocked));
  }

  Future<void> toggleLock() async {
    final bool previousState = isCurrentlyLocked;

    isCurrentlyLocked = !isCurrentlyLocked;
    emit(DoorLockUpdated(isCurrentlyLocked));

    final String actionCommand = isCurrentlyLocked ? "LOCK" : "UNLOCK";

    try {
      await repository.sendDeviceCommand(
        deviceId: deviceId,
        action: actionCommand,
      );
    } catch (e) {
      isCurrentlyLocked = previousState;
      emit(DoorLockError('Failed to $actionCommand the door. Check your connection.'));
      emit(DoorLockUpdated(isCurrentlyLocked));
    }
  }
}
