import 'package:fleexa/Features/overview/system_overview/data/models/device_model.dart';
import 'package:fleexa/Features/overview/system_overview/views/widgets/card_label_value.dart';
import 'package:fleexa/Features/overview/system_overview/views/widgets/device_card.dart';
import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class DeviceOverviewCard extends StatelessWidget {
  final DeviceModel deviceModel;

  const DeviceOverviewCard({
    super.key,
    required this.deviceModel,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => GoRouter.of(context).pushNamed(deviceModel.path),
      child: DeviceCard(
          isActuator: deviceModel.isActuator,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
             
                children: [
                  Text(
                    deviceModel.title,
                    style:
                        Styles.style14Medium.copyWith(color: AppColors.white),
                  ),
                  const Spacer(),
                  SvgPicture.asset(deviceModel.iconPath),
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                deviceModel.status,
                style:
                    Styles.style12Regular.copyWith(color: AppColors.mediumGray),
              ),
              const SizedBox(
                height: 12,
              ),
              CardLabelValue(label: deviceModel.label, value: deviceModel.value)
            ],
          )),
    );
  }
}
