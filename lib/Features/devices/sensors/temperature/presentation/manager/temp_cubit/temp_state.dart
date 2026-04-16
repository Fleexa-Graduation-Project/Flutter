import 'package:equatable/equatable.dart';
import 'package:fleexa/Features/devices/sensors/temperature/data/models/temp_model.dart';

abstract class TempState extends Equatable {
  const TempState();

  @override
  List<Object?> get props => [];
}

class TempInitial extends TempState {}

class TempLoading extends TempState {}

class TempLoaded extends TempState {
  final TempModel device;

  const TempLoaded(this.device);

  @override
  List<Object?> get props => [device];
}

class TempError extends TempState {
  final String message;

  const TempError(this.message);

  @override
  List<Object?> get props => [message];
}