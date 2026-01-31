import 'package:fleexa/Features/devices/sensors/temperature/data/models/device_status_model.dart';
import 'package:fleexa/Features/devices/sensors/temperature/presentation/views/widgets/device_status_row.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';

class DeviceStatusList extends StatelessWidget {
  final List<DeviceStatusModel> items;

  const DeviceStatusList({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((item) {
        return Padding(
          padding: EdgeInsets.only(
              bottom: item.status == S.of(context).latUpdate ? 0 : 12),
          child: DeviceStatusRow(
            deviceStatusModel: item,
          ),
        );
      }).toList(),
    );
  }
}
