import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fleexa/Features/devices/sensors/temperature/data/repos/temp_repository.dart';
import 'temp_telemetry_state.dart';

class TempTelemetryCubit extends Cubit<TempTelemetryState> {
  final TempRepository repository;

  TempTelemetryCubit(this.repository) : super(TempTelemetryInitial());

  Future<void> getTelemetry(String id, String period) async {
    emit(TempTelemetryLoading());

    try {
      final data = await repository.getTelemetry(id, period);

      emit(TempTelemetryLoaded(
        telemetry: data,
        period: period,
      ));
    } catch (e) {
      emit(TempTelemetryError(e.toString()));
    }
  }
}