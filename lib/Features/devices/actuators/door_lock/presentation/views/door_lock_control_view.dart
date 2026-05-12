import 'package:fleexa/Features/devices/actuators/door_lock/presentation/manager/door_lock_cubit.dart';
import 'package:fleexa/Features/devices/actuators/door_lock/presentation/views/widgets/device_pic.dart';
import 'package:fleexa/Features/devices/actuators/door_lock/presentation/views/widgets/recent_events_list.dart';
import 'package:fleexa/Features/devices/actuators/door_lock/presentation/views/widgets/upper_container_content.dart';
import 'package:fleexa/Features/devices/shared/presentation/manager/device_details_cubit.dart';
import 'package:fleexa/core/router/app_router.dart';
import 'package:fleexa/core/utils/common_widgets/app_loading.dart';
import 'package:fleexa/core/utils/common_widgets/custom_appbar.dart';
import 'package:fleexa/core/utils/common_widgets/custom_container.dart';
import 'package:fleexa/core/utils/common_widgets/custom_refresh_indicator.dart';
import 'package:fleexa/core/utils/common_widgets/error_page.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../shared/presentation/manager/device_details_state.dart';
import '../manager/door_lock_state.dart';

class DoorLockControlView extends StatefulWidget {
  const DoorLockControlView({super.key});

  @override
  State<DoorLockControlView> createState() => _DoorLockControlViewState();
}

class _DoorLockControlViewState extends State<DoorLockControlView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: S.of(context).doorLock,
        detailsPage: AppRouter.doorLockDetails,
      ),
      body: BlocBuilder<DeviceDetailsCubit, DeviceDetailsState>(
        builder: (context, state) {
          if (state is DeviceDetailsLoading || state is DeviceDetailsInitial) {
            return const AppLoading();
          } else if (state is DeviceDetailsError) {
            return ErrorPage(
              onRetry: () {
                context
                    .read<DeviceDetailsCubit>()
                    .loadDeviceData("door-actuator-01");
              },
              type: state.errorType,
            );
          } else if (state is DeviceDetailsLoaded) {
            final device = state.device;
            final List dynamicEvents =
                (device.payload['recent_events'] as List? ?? [])
                    .take(5)
                    .toList();
            return SafeArea(
              child: CustomRefreshIndicator(
                onRefresh: () => context
                    .read<DeviceDetailsCubit>()
                    .loadDeviceData("door-actuator-01"),
                child: Center(
                  child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 52),
                      child: Column(
                        children: [
                          const SizedBox(height: 32),
                          const DevicePic(),
                          const SizedBox(height: 72),
                          CustomContainer(
                            child: BlocBuilder<DoorLockCubit, DoorLockState>(
                              builder: (context, doorState) {
                                final isLocked = context
                                    .read<DoorLockCubit>()
                                    .isCurrentlyLocked;
                                return UpperContainerContent(
                                    isLocked: isLocked,
                                    onToggle: (value) {
                                      setState(() {
                                        context
                                            .read<DoorLockCubit>()
                                            .toggleLock();
                                      });
                                    });
                              },
                            ),
                          ),
                          const SizedBox(height: 36),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                S.of(context).recentActivities,
                                style: Styles.style18Medium,
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          CustomContainer(
                              child: RecentEventsList(events: dynamicEvents)),
                          const SizedBox(height: 32),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
