import 'package:fleexa/Features/devices/actuators/door_lock/presentation/views/widgets/device_pic.dart';
import 'package:fleexa/Features/devices/actuators/door_lock/presentation/views/widgets/recent_events_list.dart';
import 'package:fleexa/Features/devices/actuators/door_lock/presentation/views/widgets/upper_container_content.dart';
import 'package:fleexa/Features/devices/shared/presentation/manager/device_details_cubit.dart';
import 'package:fleexa/core/router/app_router.dart';
import 'package:fleexa/core/utils/common_widgets/app_error.dart';
import 'package:fleexa/core/utils/common_widgets/app_loading.dart';
import 'package:fleexa/core/utils/common_widgets/custom_appbar.dart';
import 'package:fleexa/core/utils/common_widgets/custom_container.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../shared/presentation/manager/device_details_state.dart';

class DoorLockControlView extends StatefulWidget {
  const DoorLockControlView({super.key});

  @override
  State<DoorLockControlView> createState() => _DoorLockControlViewState();
}

class _DoorLockControlViewState extends State<DoorLockControlView> {
  bool isLocked = true;

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
            return AppError(message: state.message);
          } else if (state is DeviceDetailsLoaded) {
            final device = state.device;
            final List dynamicEvents =
                (device.payload['recent_events'] as List? ?? [])
                    .take(5)
                    .toList();
            return SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 52),
                  child: Column(
                    children: [
                      const SizedBox(height: 32),
                      const DevicePic(),
                      const SizedBox(height: 72),
                      CustomContainer(
                        child: UpperContainerContent(
                            isLocked: isLocked,
                            onToggle: (value) {
                              setState(() {
                                isLocked = value;
                              });
                            }),
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
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
