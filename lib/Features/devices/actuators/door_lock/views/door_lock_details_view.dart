import 'package:fleexa/core/utils/common_widgets/device_status_row.dart';
import 'package:fleexa/Features/devices/actuators/door_lock/views/widgets/door_lock_appbar.dart';
import 'package:fleexa/Features/devices/actuators/door_lock/views/widgets/door_lock_container.dart';
import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/core/utils/constants/app_strings.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';

class DoorLockDetailsView extends StatelessWidget {
  const DoorLockDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DoorLockAppbar(showActionButton: false),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const DoorLockContainer(
                      child: DeviceStatusRow(status: DeviceStatus.offline)),
                  const SizedBox(height: 32),
                  Text(
                    S.of(context).labelAlertsAndWarnings,
                    style:
                        Styles.style18Medium.copyWith(color: AppColors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
