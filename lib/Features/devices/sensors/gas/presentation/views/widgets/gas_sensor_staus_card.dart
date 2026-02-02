import 'package:fleexa/core/utils/common_widgets/custom_container.dart';
import 'package:fleexa/core/utils/common_widgets/device_status_row.dart';
import 'package:fleexa/core/utils/constants/app_strings.dart';
import 'package:flutter/material.dart';

class GasSensorStausCard extends StatelessWidget {
  const GasSensorStausCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
        child: DeviceStatusRow(
      status: DeviceStatus.online,
    ));
  }
}
