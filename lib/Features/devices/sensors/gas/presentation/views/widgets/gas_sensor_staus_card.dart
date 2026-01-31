import 'package:fleexa/core/utils/common_widgets/custom_container.dart';
import 'package:fleexa/core/utils/common_widgets/custom_container_row.dart';
import 'package:fleexa/core/utils/common_widgets/device_status_row.dart';
import 'package:fleexa/core/utils/constants/app_strings.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';

class GasSensorStausCard extends StatelessWidget {
  const GasSensorStausCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
        child: Column(
      children: [
        const DeviceStatusRow(
          status: DeviceStatus.online,
        ),
        const SizedBox(
          height: 12,
        ),
        CustomContainerRow(
            title: S.of(context).latUpdate,
            value: S.of(context).lastUpdateValue)
      ],
    ));
  }
}
