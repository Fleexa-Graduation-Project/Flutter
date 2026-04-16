import 'package:fleexa/Features/devices/shared/data/models/device_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fleexa/Features/overview/home/presentation/manager/devices_cubit.dart';
import 'package:fleexa/Features/overview/home/presentation/manager/devices_state.dart';


import 'gas_sensor_overview.dart';
import 'devices_grid.dart';

class SummariesSection extends StatelessWidget {
  const SummariesSection({super.key});

  List<DeviceModel> _filterDevices(List<DeviceModel> devices) {
    return devices
        .where((d) => d.type != 'gas-sensor')
        .toList();
  }

  double _extractGasLevel(List<DeviceModel> devices) {
    try {
      final gas = devices.firstWhere((d) => d.type == 'gas-sensor');
      return (gas.payload['gas_level'] as num).toDouble();
    } catch (_) {
      return 0.0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DevicesCubit, DevicesState>(
      builder: (context, state) {
        if (state is DevicesLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state is DevicesError) {
          return Center(child: Text(state.message));
        }

        if (state is DevicesLoaded) {
          final devices = state.devices;

          final filtered = _filterDevices(devices);
          final gasLevel = _extractGasLevel(devices);

          return Column(
            children: [
              GasSensorOverview(gasLevel: gasLevel),
              const SizedBox(height: 24),
              DevicesGrid(devices: filtered),
            ],
          );
        }

        return const SizedBox();
      },
    );
  }
}