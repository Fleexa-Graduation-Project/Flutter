import 'package:fleexa/Features/overview/home/views/widgets/device_card_list.dart';
import 'package:fleexa/Features/overview/home/views/widgets/home_appbar.dart';
import 'package:fleexa/core/utils/constants/app_strings.dart';
import 'package:flutter/material.dart';

import 'widgets/devices_section_header.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  DeviceFilter currentFilter = DeviceFilter.all;
  bool isDoorOpen = true;
  bool isAcOn = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
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
                  currentFilter: currentFilter,
                  onFilterChanged: (value) {
                    if (value != null) {
                      setState(() {
                        currentFilter = value;
                      });
                    }
                  },
                ),
                const SizedBox(height: 24),
                Expanded(
                  child: DeviceCardList(
                    filterType: currentFilter,
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
        ),
      ),
    );
  }
}
