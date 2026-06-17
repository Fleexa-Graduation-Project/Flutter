abstract class AcControlState {}

class AcControlInitial extends AcControlState {}

class AcControlUpdated extends AcControlState {
  final bool powerOn;
  final int targetTemperature;
  final String selectedMode;

  AcControlUpdated({
    required this.powerOn,
    required this.targetTemperature,
    required this.selectedMode,
  });
}

class AcControlError extends AcControlState {
  final String message;
  AcControlError(this.message);
}
