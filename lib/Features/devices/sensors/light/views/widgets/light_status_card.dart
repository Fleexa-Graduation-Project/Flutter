import 'package:fleexa/core/utils/common_widgets/custom_container.dart';
import 'package:fleexa/core/utils/common_widgets/custom_container_row.dart';
import 'package:fleexa/core/utils/common_widgets/device_status_row.dart';
import 'package:fleexa/core/utils/constants/app_strings.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';

class LightStatusCard extends StatelessWidget {
  const LightStatusCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        children: [
          const DeviceStatusRow(
            status: DeviceStatus.online,
          ),
          const SizedBox(height: 12),
          CustomContainerRow(
            title: S.of(context).lightstatus,
            value: S.of(context).statusBright,
          ),
        ],
      ),
    );
  }
}
