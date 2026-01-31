import 'package:fleexa/Features/overview/home/views/widgets/device_card.dart';
import 'package:fleexa/core/router/app_router.dart';
import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/core/utils/constants/app_strings.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';

class DeviceCardList extends StatelessWidget {
  const DeviceCardList({
    super.key,
    required this.filterType,
    required this.isDoorOpen,
    required this.isAcOn,
    required this.onDoorToggle,
    required this.onAcToggle,
  });

  final DeviceFilter filterType;
  final bool isDoorOpen;
  final bool isAcOn;
  final ValueChanged<bool>? onDoorToggle;
  final ValueChanged<bool>? onAcToggle;

  bool get isActuator => DeviceFilter.actuators == filterType;
  bool get isSensor => DeviceFilter.sensors == filterType;
  bool get isAll => DeviceFilter.all == filterType;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      childAspectRatio: 0.85,
      children: [
        if (isActuator || isAll)
          DeviceCard(
            title: S.of(context).doorLock,
            subtext: isDoorOpen
                ? S.of(context).doorLockedStatus
                : S.of(context).doorUnlockedStatus,
            pageRouteName: AppRouter.doorLockControl,
            icon: 'assets/icons/door_lock_actuator.svg',
            statusColor:
                isDoorOpen ? AppColors.emeraldGreen : AppColors.crimsonRed,
            type: DeviceType.actuator,
            isOn: isDoorOpen,
            onToggle: onDoorToggle,
          ),
        if (isSensor || isAll)
          DeviceCard(
            title: S.of(context).gasSensor,
            subtext: S.of(context).gasStatus,
            pageRouteName: AppRouter.gasSensor,
            icon: 'assets/icons/gas_sensor.svg',
            statusColor: AppColors.copperOrange,
            type: DeviceType.sensor,
            valueLabel: '22 PPM',
            valueIcon: 'assets/icons/ac_airwaves.svg',
          ),
        if (isSensor || isAll)
          DeviceCard(
            title: S.of(context).lightSensor,
            subtext: S.of(context).lightstatus,
            pageRouteName: AppRouter.lightSensor,
            icon: 'assets/icons/light_sensor.svg',
            statusColor: AppColors.emeraldGreen,
            type: DeviceType.sensor,
            valueIcon: 'assets/icons/ac_heating.svg',
            valueLabel: '15%',
          ),
        if (isActuator || isAll)
          DeviceCard(
            title: S.of(context).ac,
            subtext: S.of(context).target,
            pageRouteName: AppRouter.acControl,
            icon: 'assets/icons/ac_actuator.svg',
            statusColor: isAcOn ? AppColors.emeraldGreen : AppColors.crimsonRed,
            type: DeviceType.actuator,
            isOn: isAcOn,
            onToggle: onAcToggle,
          ),
        if (isSensor || isAll)
          DeviceCard(
            title: S.of(context).temperature,
            subtext: S.of(context).temperatureStatus,
            pageRouteName: AppRouter.temperatureSensor,
            icon: 'assets/icons/temp_sensor.svg',
            statusColor: AppColors.emeraldGreen,
            type: DeviceType.sensor,
            valueIcon: 'assets/icons/temp_sensor.svg',
            valueLabel: '20 °C',
          ),
      ],
    );
  }
}
