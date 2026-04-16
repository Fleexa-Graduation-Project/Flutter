import 'package:fleexa/Features/overview/home/presentation/manager/devices_cubit.dart';
import 'package:fleexa/Features/overview/home/presentation/views/widgets/device_card_list.dart';
import 'package:fleexa/Features/overview/home/presentation/views/widgets/home_appbar.dart';
import 'package:fleexa/core/utils/common_widgets/app_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/common_widgets/app_error.dart';
import '../manager/devices_state.dart';
import 'widgets/devices_section_header.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isDoorOpen = true;
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
              return AppError(message: state.message);
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
                        child: DeviceCardList(
                          devices: state.devices,
                          isDoorOpen: isDoorOpen,
                          onDoorToggle: (value) {
                            setState(() {
                              isDoorOpen = value;
                            });
                          },
                          isAcOn: isAcOn,
                          onAcToggle: (value) {
                            setState(() {
                              isAcOn = value;
                            });
                          },
                        ),
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
