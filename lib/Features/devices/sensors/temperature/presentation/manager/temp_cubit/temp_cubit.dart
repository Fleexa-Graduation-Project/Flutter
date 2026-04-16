import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fleexa/Features/devices/sensors/temperature/data/repos/temp_repository.dart';
import 'temp_state.dart';

class TempCubit extends Cubit<TempState> {
  final TempRepository repository;

  TempCubit(this.repository) : super(TempInitial());

  Future<void> getDevice(String id) async {
    emit(TempLoading());

    try {
      final device = await repository.getTempSensorById(id);
      emit(TempLoaded(device));
    } catch (e) {
      emit(TempError(e.toString()));
    }
  }
}