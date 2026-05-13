import 'package:fleexa/Features/devices/actuators/door_lock/presentation/manager/door_lock_cubit.dart';
import 'package:fleexa/generated/l10n.dart';

import 'package:fleexa/Features/overview/home/presentation/manager/devices_cubit.dart';
import 'package:fleexa/Features/overview/home/presentation/views/widgets/device_card_list.dart';
import 'package:fleexa/Features/overview/home/presentation/views/widgets/home_appbar.dart';
import 'package:fleexa/core/widgets/app_loading.dart';
import 'package:fleexa/core/widgets/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotspot/hotspot.dart';

import '../../../../../core/widgets/error_page.dart';
import '../../../../devices/actuators/door_lock/presentation/manager/door_lock_state.dart';
import '../manager/devices_state.dart';
import 'widgets/devices_section_header.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isAcOn = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<DevicesCubit, DevicesState>(
          builder: (context, state) {
            if (state is DevicesLoading || state is DevicesInitial) {
              return const AppLoading();
            } else if (state is DevicesError) {
              return ErrorPage(
                type: state.errorType,
                onRetry: () => context.read<DevicesCubit>().fetchDevices(),
              );
            } else if (state is DevicesLoaded) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 24,
                    left: 24,
                    right: 24,
                    bottom: 8,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const HomeAppbar(),
                      const SizedBox(height: 12),
                      DevicesSectionHeader(
                        currentFilter: state.currentFilter,
                        onFilterChanged: (value) {
                          if (value != null) {
                            context.read<DevicesCubit>().filterDevices(value);
                          }
                        },
                      ),
                      const SizedBox(height: 24),
                      Expanded(
                        child: BlocBuilder<DoorLockCubit, DoorLockState>(
                          builder: (context, doorState) {
                            final isLocked =
                                context.read<DoorLockCubit>().isCurrentlyLocked;
                            return CustomRefreshIndicator(
                              onRefresh: () async =>
                                  context.read<DevicesCubit>().fetchDevices(),
                              child: DeviceCardList(
                                devices: state.devices,
                                isDoorOpen: isLocked,
                                onDoorToggle: (value) {
                                  setState(() {
                                    context.read<DoorLockCubit>().toggleLock();
                                  });
                                },
                                isAcOn: isAcOn,
                                onAcToggle: (value) {
                                  setState(() {
                                    isAcOn = value;
                                  });
                                },
                              ),
                            );
                          },
                        ),
                      ).withHotspot(
                        order: 4,
                        title: S.of(context).liveDevices,
                        text:
                            'Monitor all your active sensors and actuators here.',
                      ),
                    ],
                  ),
                ),
              );
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
