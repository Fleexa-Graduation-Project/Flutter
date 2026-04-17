import 'package:fleexa/Features/overview/notifications/data/models/notification_model.dart';
import 'package:fleexa/core/utils/common_widgets/custom_container.dart';
import 'package:fleexa/core/utils/constants/assets.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/constants/app_colors.dart';
import '../../../../../core/utils/constants/app_strings.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key, required this.notification});

  final NotificationModel notification;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: notification.severity == AlertSeverity.critical
                  ? AppColors.wineRed
                  : AppColors.burntOrange,
              borderRadius: BorderRadius.circular(12),
            ),
            child: SvgPicture.asset(
              notification.deviceType == AlertDeviceType.doorLock
                  ? AppAssets.iconsDoor
                  : AppAssets.iconsGasAlert,
              width: 24,
              height: 24,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  notification.title,
                  style: Styles.style16Medium.copyWith(
                    color: AppColors.white,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  notification.description,
                  style: Styles.style14Regular.copyWith(
                    color: AppColors.coolGray,
                  ),
                ),
              ],
            ),
          ),
          Text(
            "1 min ago",
            style: Styles.style12Regular.copyWith(
              color: AppColors.coolGray,
            ),
          ),
        ],
      ),
    );
  }
}
