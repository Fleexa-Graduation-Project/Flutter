import 'package:fleexa/Features/devices/sensors/tempreature/data/models/device_status_model.dart';
import 'package:fleexa/Features/devices/sensors/tempreature/presentation/views/widgets/connected_label.dart';
import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:flutter/material.dart';

class DeviceStatusRow extends StatelessWidget {
  const DeviceStatusRow({super.key, required this.deviceStatusModel});
  final DeviceStatusModel deviceStatusModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(deviceStatusModel.status,
            style: Styles.style14Medium.copyWith(color: AppColors.white)),
        const Spacer(),
        deviceStatusModel.isConnected
            ? const ConnectedLabel()
            : Text(
                deviceStatusModel.description,
                style: Styles.style12Medium.copyWith(color: AppColors.white50),
              ),
      ],
    );
  }
}
