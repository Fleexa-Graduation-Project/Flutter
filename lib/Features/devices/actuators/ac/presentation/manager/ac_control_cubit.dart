import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../shared/data/repos/device_details_repository.dart';
import 'ac_control_state.dart';

class AcControlCubit extends Cubit<AcControlState> {
  final DeviceDetailsRepository repository;
  String deviceId;

  // Default values before initialization
  bool powerOn = false;
  int targetTemperature = 24;
  String selectedMode = 'COOLING';
  double? timerEndTimestamp;

  AcControlCubit({required this.repository, required this.deviceId})
      : super(AcControlInitial());

  // 1. receive initial state from payload
  void initializeState(Map<String, dynamic> payload) {
    powerOn = payload['power_state'] == 'ON';
    targetTemperature = payload['target_temp']?.toInt() ?? 24;
    selectedMode = payload['mode'] ?? 'COOLING';
    final timerVal = payload['timer_end_timestamp'];
    timerEndTimestamp = (timerVal != null && timerVal > 0)
        ? (timerVal * 1000).toDouble()
        : null;

    _emitUpdate();
  }

  // 2. toggle power button
  Future<void> togglePower() async {
    final previousState = powerOn;
    powerOn = !powerOn;
    _emitUpdate();

    await _sendCommand(
      action: "SET_STATE",
      parameters: {"power": powerOn ? "ON" : "OFF"},
      fallback: () => powerOn = previousState,
    );
  }

  // 3. change temperature
  Future<void> changeTemperature(int newTemp) async {
    final previousTemp = targetTemperature;
    targetTemperature = newTemp;
    _emitUpdate();

    await _sendCommand(
      action: "SET_AC_TEMP",
      parameters: {"target_temp": newTemp},
      fallback: () => targetTemperature = previousTemp,
    );
  }

  // 4. Change mode
  Future<void> changeMode(String newMode) async {
    final previousMode = selectedMode;
    selectedMode = newMode;
    _emitUpdate();

    await _sendCommand(
      action: "SET_AC_MODE",
      parameters: {"mode": newMode},
      fallback: () => selectedMode = previousMode,
    );
  }

  Future<void> setTimer(int hours, int minutes) async {
    final previousTimer = timerEndTimestamp;

    // calulate the duration in hours as a double
    final double durationHours = hours + (minutes / 60.0);

    // update the ui temporarily with the new timer end timestamp
    if (durationHours > 0) {
      timerEndTimestamp =
          DateTime.now().millisecondsSinceEpoch + (durationHours * 3600 * 1000);
    } else {
      timerEndTimestamp = null;
    }
    _emitUpdate();

    await _sendCommand(
      action: "set_timer",
      parameters: {"duration_hours": durationHours},
      fallback: () => timerEndTimestamp = previousTimer,
    );
  }

  // Helper function to send commands to AWS
  Future<void> _sendCommand({
    required String action,
    Map<String, dynamic>? parameters,
    required Function fallback,
  }) async {
    log("AC Command: $action, Params: $parameters");
    try {
      await repository.sendDeviceCommand(
        deviceId: deviceId,
        action: action,
        parameters: parameters,
      );
    } catch (e) {
      log("AC Command Failed: $e");
      fallback(); // if it fails we return to the previous state
      emit(AcControlError("Failed to send command."));
      _emitUpdate();
    }
  }

  void _emitUpdate() {
    emit(AcControlUpdated(
      powerOn: powerOn,
      targetTemperature: targetTemperature,
      selectedMode: selectedMode,
      timerEndTimestamp: timerEndTimestamp,
    ));
  }
}
