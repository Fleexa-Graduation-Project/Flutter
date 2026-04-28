import 'package:fleexa/Features/overview/home/data/repos/device_list_repository.dart';
import 'package:fleexa/Features/overview/home/presentation/manager/devices_cubit.dart';
import 'package:fleexa/Features/overview/home/presentation/views/home_view.dart';
import 'package:fleexa/Features/overview/system_overview/data/repos/system_overview_repository.dart';
import 'package:fleexa/Features/overview/system_overview/presentation/manager/Energy_cubit/energy_cubit.dart';
import 'package:fleexa/Features/overview/system_overview/presentation/manager/alerts_chart_cubit/alerts_chart_cubit.dart';
import 'package:fleexa/Features/overview/system_overview/presentation/manager/system_overview_cubit/system_overview_cubit.dart';
import 'package:fleexa/Features/overview/system_overview/presentation/views/system_overview_view.dart';
import 'package:fleexa/Features/settings/presentation/views/settings_view.dart';
import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/core/utils/constants/app_strings.dart';
import 'package:fleexa/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotspot/hotspot.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../devices/actuators/door_lock/presentation/manager/door_lock_cubit.dart';
import 'widgets/custom_bottom_nav_bar.dart';

class MainOverviewView extends StatefulWidget {
  const MainOverviewView({super.key});

  @override
  State<MainOverviewView> createState() => _MainOverviewViewState();
}

class _MainOverviewViewState extends State<MainOverviewView> {
  final PageController _pageController = PageController();

  int _currentIndex = 0;
  bool _isCheckingFirstTime = true;

  final List<Widget> _screens = const [
    HomeView(),
    SystemOverviewView(),
    SettingsView(),
  ];

  Future<void> _checkFirstTime(BuildContext innerContext) async {
    final prefs = await SharedPreferences.getInstance();
    bool hasSeenTutorial = prefs.getBool('hasSeenMainTutorial') ?? false;

    if (!hasSeenTutorial && innerContext.mounted) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        HotspotProvider.of(innerContext).startFlow();
      });
      await prefs.setBool('hasSeenMainTutorial', true);
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              SystemOverviewCubit(getIt<SystemOverviewRepository>())
                ..getOverview(period: TimeRange.lastWeek.apiValue),
        ),
        BlocProvider(
          create: (context) =>
              AlertsChartCubit(getIt<SystemOverviewRepository>())
                ..getAlertsChart(period: TimeRange.lastWeek.apiValue),
        ),
        BlocProvider(
            create: (context) => EnergyCubit(getIt<SystemOverviewRepository>())
              ..getEnergy(period: TimeRange.lastWeek.apiValue)),
        BlocProvider<DevicesCubit>(
          create: (context) =>
              DevicesCubit(getIt<DeviceListRepository>())..fetchDevices(),
        ),
        BlocProvider.value(
          value: getIt<DoorLockCubit>(),
        ),
      ],
      child: Theme(
        data: Theme.of(context).copyWith(
          cardColor: AppColors.dimGray,
          dialogBackgroundColor: AppColors.dimGray,
          colorScheme: Theme.of(context).colorScheme.copyWith(
                primary: AppColors.wineRed,
                secondary: AppColors.white,
              ),
          textTheme: Theme.of(context).textTheme.apply(
                bodyColor: AppColors.white,
                displayColor: AppColors.white,
              ),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              foregroundColor: AppColors.coolGray,
            ),
          ),
        ),
        child: HotspotProvider(
          backgroundColor: AppColors.charcoalBlack,
          child: Builder(builder: (innerContext) {
            if (_isCheckingFirstTime) {
              _checkFirstTime(innerContext);
              _isCheckingFirstTime = false;
            }
            return Scaffold(
                body: PageView(
                    controller: _pageController,
                    onPageChanged: _onPageChanged,
                    physics: const BouncingScrollPhysics(),
                    children: _screens),
                bottomNavigationBar: CustomBottomNavBar(
                  currentIndex: _currentIndex,
                  onTap: _onItemTapped,
                ));
          }),
        ),
      ),
    );
  }
}
