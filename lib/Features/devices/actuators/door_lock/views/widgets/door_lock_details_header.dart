import 'package:fleexa/core/utils/common_widgets/custom_container.dart';
import 'package:fleexa/core/utils/constants/app_strings.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/common_widgets/custom_container_row.dart';
import '../../../../../../core/utils/common_widgets/device_status_row.dart';
import '../../../../../../generated/l10n.dart';

class DoorLockDetailsHeader extends StatelessWidget {
  const DoorLockDetailsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        children: [
          const DeviceStatusRow(
            status: DeviceStatus.online,
          ),
          const SizedBox(height: 16),
          CustomContainerRow(
            title: S.of(context).currentStatus,
            value: S.of(context).doorLockedStatus,
          )
        ],
      ),
    );
  }
}
