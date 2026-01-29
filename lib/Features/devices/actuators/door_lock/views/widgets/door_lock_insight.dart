import 'package:fleexa/core/utils/common_widgets/custom_container.dart';
import 'package:fleexa/core/utils/common_widgets/custom_container_row.dart';
import 'package:flutter/material.dart';

import '../../../../../../generated/l10n.dart';

class DoorLockInsight extends StatelessWidget {
  const DoorLockInsight({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        children: [
          CustomContainerRow(
            title: S.of(context).unlockDuration,
            value: S.of(context).statusAboveNormal,
          ),
          const SizedBox(height: 12),
          CustomContainerRow(
            title: S.of(context).statusNormal,
            value: S.of(context).timeMin(2),
          ),
          const SizedBox(height: 12),
          CustomContainerRow(
            title: S.of(context).avgUnlockDuration,
            value: S.of(context).timeMin(7),
          ),
        ],
      ),
    );
  }
}
