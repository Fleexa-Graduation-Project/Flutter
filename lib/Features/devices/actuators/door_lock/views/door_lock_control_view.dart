import 'package:fleexa/Features/devices/actuators/door_lock/views/widgets/device_pic.dart';
import 'package:fleexa/Features/devices/actuators/door_lock/views/widgets/recent_events_list.dart';
import 'package:fleexa/Features/devices/actuators/door_lock/views/widgets/upper_container_content.dart';
import 'package:fleexa/core/router/app_router.dart';
import 'package:fleexa/core/utils/common_widgets/custom_appbar.dart';
import 'package:fleexa/core/utils/common_widgets/custom_container.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';

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
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Column(
                children: [
                  const SizedBox(height: 32),
                  const DevicePic(),
                  const SizedBox(height: 36),
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
                  const CustomContainer(child: RecentEventsList()),
                  const SizedBox(height: 32),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
