import 'package:fleexa/core/utils/common_widgets/custom_container.dart';
import 'package:fleexa/core/utils/common_widgets/device_status_row.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../core/utils/common_widgets/custom_container_row.dart';
import '../../../../../../../../core/utils/constants/app_strings.dart';
import '../../../../../../../../generated/l10n.dart';

class AcDetailsCard extends StatelessWidget {
  const AcDetailsCard({super.key});

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
            title: S.of(context).controlType,
            value: S.of(context).autoMode,
          ),
          const SizedBox(height: 16),
          CustomContainerRow(
            title: S.of(context).mode,
            value: S.of(context).modeCooling,
          ),
          const SizedBox(height: 16),
          CustomContainerRow(
            title: S.of(context).target,
            value: '24° C',
          ),
          const SizedBox(height: 16),
          CustomContainerRow(
            title: S.of(context).running,
            value: '3h20m',
          ),
        ],
      ),
    );
  }
}
