import 'package:fleexa/Features/overview/notifications/data/alert_model.dart';
import 'package:fleexa/core/utils/common_widgets/alert_container.dart';
import 'package:fleexa/core/utils/common_widgets/disabled_section.dart';
import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/core/utils/constants/app_strings.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../functions/format_date_time.dart';

class AlertCard extends StatelessWidget {
  const AlertCard({super.key, required this.alert});

  final AlertModel alert;

  @override
  Widget build(BuildContext context) {
    return DisabledSection(
      isEnabled: !alert.isRead,
      child: AlertContainer(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: alert.alertSeverity == AlertSeverity.critical
                    ? AppColors.wineRed
                    : AppColors.burntOrange,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: SvgPicture.asset(
                alert.alertDeviceType == AlertDeviceType.doorLock
                    ? 'assets/icons/door_lock_actuator.svg'
                    : 'assets/icons/gas_alert.svg',
                width: 24,
                height: 24,
              ),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  alert.title,
                  style: Styles.style12Medium.copyWith(color: AppColors.white),
                ),
                const SizedBox(height: 4),
                Text(
                  alert.description,
                  style:
                      Styles.style10Regular.copyWith(color: AppColors.coolGray),
                ),
              ],
            ),
            const Spacer(),
            Text(
              formatTime(alert.dateTime),
              style: Styles.style10Regular.copyWith(
                color: AppColors.coolGray,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
