import 'package:equatable/equatable.dart';
import 'package:fleexa/Features/devices/sensors/temperature/data/models/temp_telemetry_model.dart';

abstract class TempTelemetryState extends Equatable {
  const TempTelemetryState();

  @override
  List<Object?> get props => [];
}

class TempTelemetryInitial extends TempTelemetryState {}

class TempTelemetryLoading extends TempTelemetryState {}

class TempTelemetryLoaded extends TempTelemetryState {
  final TempTelemetryModel telemetry;
  final String period;

  const TempTelemetryLoaded({
    required this.telemetry,
    required this.period,
  });

  @override
  List<Object?> get props => [telemetry, period];
}

class TempTelemetryError extends TempTelemetryState {
  final String message;

  const TempTelemetryError(this.message);

  @override
  List<Object?> get props => [message];
}