import 'package:fleexa/Features/devices/shared/data/models/device_model.dart';

import 'package:fleexa/Features/overview/system_overview/data/models/device_quick_item.dart';
import 'package:fleexa/Features/overview/system_overview/presentation/views/widgets/card_label_value.dart';
import 'package:fleexa/Features/overview/system_overview/presentation/views/widgets/device_card.dart';
import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class DeviceOverviewCard extends StatelessWidget {
  final DeviceModel deviceModel;
  final DeviceQuickItem quickDevice;

  const DeviceOverviewCard({
    super.key,
    required this.deviceModel,
    required this.quickDevice,
  });
  String formatLastActivity(int timestamp) {

    final isMillis = timestamp > 1000000000000;

    final lastSeen = DateTime.fromMillisecondsSinceEpoch(
      isMillis ? timestamp : timestamp * 1000,
    );

    final diff = DateTime.now().difference(lastSeen);

    if (diff.inMinutes < 1) return 'Just now';
    if (diff.inMinutes < 60) return '${diff.inMinutes} min ago';
    if (diff.inHours < 24) return '${diff.inHours} h ago';
    if (diff.inDays < 30) return '${diff.inDays} d ago';
    return '${(diff.inDays / 30).floor()} mo ago';
  }

  String getDeviceValue() {
    final payload = deviceModel.payload;

    switch (deviceModel.type) {
      case 'temp-sensor':
        return '${payload['temp']?.toStringAsFixed(0) ?? '--'}°C';

      case 'light-sensor':
        final raw = (payload['light_level'] ?? 0).toDouble();
        final percent = (raw / 1000 * 100).clamp(0, 100);

        return '${percent.toStringAsFixed(0)}%';
      case 'gas-sensor':
        return '${payload['gas_level'] ?? '--'} PPM';

      case 'door-actuator':
        final ts = deviceModel.lastSeenAt;
        return formatLastActivity(ts);
      case 'ac-actuator':
        return '${payload['target_temp']?.toStringAsFixed(0) ?? '--'}°C';

      default:
        return deviceModel.status;
    }
  }

  bool get isActuator {
    return deviceModel.type.toLowerCase().contains('actuator');
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => GoRouter.of(context).pushNamed(quickDevice.path),
      child: DeviceCard(
        isActuator: isActuator,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  quickDevice.title,
                  style: Styles.style14Medium.copyWith(
                    color: AppColors.white,
                  ),
                ),
                const Spacer(),
                SvgPicture.asset(quickDevice.iconPath, width: 20, height: 20),
              ],
            ),
            const SizedBox(height: 4),
            Text(
              deviceModel.operationalState,
              style: Styles.style12Regular.copyWith(
                color: AppColors.mediumGray,
              ),
            ),
            const SizedBox(height: 12),
            CardLabelValue(
              label: quickDevice.deviceDesc,
              value: getDeviceValue(),
            ),
          ],
        ),
      ),
    );
  }
}
