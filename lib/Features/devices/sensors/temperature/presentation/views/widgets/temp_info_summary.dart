
import 'package:fleexa/Features/devices/sensors/temperature/data/models/temp_model.dart';
import 'package:fleexa/Features/devices/sensors/temperature/presentation/views/widgets/device_status_list.dart';
import 'package:fleexa/core/utils/common_widgets/custom_container.dart';
import 'package:flutter/material.dart';

class TempInfoSummary extends StatelessWidget {
  const TempInfoSummary({super.key, required this.data});
  final TempModel data;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: DeviceStatusList(
        tempModel: data,
      ),
    );
  }
}
