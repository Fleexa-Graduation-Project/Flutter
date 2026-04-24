import 'package:fleexa/Features/devices/shared/data/models/device_model.dart';
import 'package:fleexa/Features/overview/home/data/repos/device_list_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/constants/app_strings.dart';
import 'devices_state.dart';

class DevicesCubit extends Cubit<DevicesState> {
  final DeviceListRepository repository;

  List<DeviceModel> _allDevices = [];

  DevicesCubit(this.repository) : super(DevicesInitial());

  Future<void> fetchDevices() async {
    emit(DevicesLoading());
    try {
      _allDevices = await repository.getAllDevices();
      emit(DevicesLoaded(
        devices: _allDevices,
        currentFilter: DeviceFilter.all,
      ));
    } catch (e) {
      emit(DevicesError('Failed to load devices: $e'));
    }
  }

  void filterDevices(DeviceFilter filter) {
    if (state is! DevicesLoaded) return;

    List<DeviceModel> filteredList;

    switch (filter) {
      case DeviceFilter.sensors:
        filteredList =
            _allDevices.where((d) => d.type.contains('sensor')).toList();
        break;
      case DeviceFilter.actuators:
        filteredList =
            _allDevices.where((d) => d.type.contains('actuator')).toList();
        break;
      case DeviceFilter.all:
        filteredList = _allDevices;
        break;
    }

    emit(DevicesLoaded(
      devices: filteredList,
      currentFilter: filter,
    ));
  }
}
