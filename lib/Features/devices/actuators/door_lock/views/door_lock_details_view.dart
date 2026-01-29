import 'package:fleexa/Features/devices/actuators/door_lock/views/widgets/alerts_section.dart';
import 'package:fleexa/Features/devices/actuators/door_lock/views/widgets/door_lock_details_header.dart';
import 'package:fleexa/Features/devices/actuators/door_lock/views/widgets/door_lock_insight.dart';
import 'package:fleexa/Features/devices/actuators/door_lock/views/widgets/door_lock_appbar.dart';
import 'package:fleexa/core/utils/constants/app_colors.dart';
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const DoorLockDetailsHeader(),
                const SizedBox(height: 40),
                Text(
                  S.of(context).labelAlertsAndWarnings,
                  style: Styles.style18Medium.copyWith(color: AppColors.white),
                ),
                const SizedBox(height: 12),
                const AlertsSection(),
                const SizedBox(height: 40),
                Text(
                  S.of(context).labelInsights,
                  style: Styles.style18Medium.copyWith(color: AppColors.white),
                ),
                const SizedBox(height: 16),
                const DoorLockInsight(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
