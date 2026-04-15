import 'package:fleexa/Features/overview/system_overview/data/models/device_model.dart';
import 'package:fleexa/Features/overview/system_overview/presentation/views/widgets/device_overview_card.dart';
import 'package:fleexa/core/router/app_router.dart';
import 'package:fleexa/core/utils/constants/assets.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';

class DevicesGrid extends StatelessWidget {
  const DevicesGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<DeviceModel> devices = [
      DeviceModel(
        title: S.of(context).lightSensor,
        status: S.of(context).statusDark,
        iconPath: AppAssets.iconsLight,
        label: S.of(context).avergeBrightness,
        path: AppRouter.lightSensor,
        value: S.of(context).avergeBrightnessValue,
      ),
      DeviceModel(
          title: S.of(context).doorLock,
          status: S.of(context).statusOpened,
          iconPath: AppAssets.iconsDoor,
          label: S.of(context).lastActivity,
          value: S.of(context).doorvalue,
          path: AppRouter.doorLockControl,
          isActuator: true),
      DeviceModel(
          title: S.of(context).ac,
          status: S.of(context).statusOn,
          iconPath: AppAssets.iconsAc,
          label: S.of(context).target,
          value: S.of(context).acValue,
          path: AppRouter.acControl,
          isActuator: true),
      DeviceModel(
        title: S.of(context).temperature,
        status: S.of(context).statusHigh,
        iconPath: AppAssets.iconsTemperature,
        label: S.of(context).currentTemperature,
        path: AppRouter.temperatureSensor,
        value: S.of(context).acValue,
      ),
    ];
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 1.1,
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: devices.length,
      itemBuilder: (context, index) {
        return DeviceOverviewCard(
          deviceModel: devices[index],
        );
      },
    );
  }
}
