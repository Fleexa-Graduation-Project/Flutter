import 'package:fleexa/Features/devices/sensors/temperature/data/models/device_status_model.dart';
import 'package:fleexa/Features/devices/sensors/temperature/presentation/views/widgets/device_status_list.dart';
import 'package:fleexa/core/utils/common_widgets/custom_container.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';

class TempInfoSummary extends StatelessWidget {
  const TempInfoSummary({super.key});

  @override
  Widget build(BuildContext context) {
    final List<DeviceStatusModel> deviceStatusItems = [
      DeviceStatusModel(
        status: S.of(context).statusConnected,
        description: '',
        isConnected: true,
      ),
      DeviceStatusModel(
        status: S.of(context).temperatureStatus,
        description: S.of(context).statusAboveHigh,
      ),
      DeviceStatusModel(
        status: S.of(context).stability,
        description: S.of(context).stable,
      ),
      DeviceStatusModel(
        status: S.of(context).latUpdate,
        description: S.of(context).lastUpdateValue,
      ),
    ];

    return CustomContainer(
      child: DeviceStatusList(
        items: deviceStatusItems,
      ),
    );
  }
}
