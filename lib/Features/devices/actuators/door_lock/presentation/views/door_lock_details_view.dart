import 'package:fleexa/Features/devices/actuators/door_lock/presentation/views/widgets/alerts_section.dart';
import 'package:fleexa/Features/devices/actuators/door_lock/presentation/views/widgets/door_lock_details_header.dart';
import 'package:fleexa/Features/devices/actuators/door_lock/presentation/views/widgets/door_lock_insight.dart';
import 'package:fleexa/Features/devices/shared/presentation/manager/device_alerts_cubit.dart';
import 'package:fleexa/Features/devices/shared/presentation/manager/device_details_cubit.dart';
import 'package:fleexa/core/widgets/custom_refresh_indicator.dart';
import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/widgets/custom_appbar.dart';

class DoorLockDetailsView extends StatelessWidget {
  const DoorLockDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: S.of(context).doorLock,
      ),
      body: SafeArea(
        child: CustomRefreshIndicator(
          onRefresh: () async {
            await Future.wait([
              context
                  .read<DeviceDetailsCubit>()
                  .loadDeviceData("door-locker-01"),
              context.read<DeviceAlertsCubit>().loadAlerts("door-locker-01"),
            ]);
          },
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const DoorLockDetailsHeader(),
                  const SizedBox(height: 40),
               
                  const AlertsSection(),
                 
                  Text(
                    S.of(context).labelInsights,
                    style:
                        Styles.style18Medium.copyWith(color: AppColors.white),
                  ),
                  const SizedBox(height: 16),
                  const DoorLockInsight(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
