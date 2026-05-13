import 'package:fleexa/Features/devices/shared/data/models/ui_alert_model.dart';
import 'package:fleexa/core/widgets/alert_container.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../core/utils/constants/app_colors.dart';
import '../../../../../../core/utils/constants/app_strings.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    super.key,
    required this.alert,
    required this.onTap,
    required this.onDismiss,
  });

  final UIAlertModel alert;
  final VoidCallback onTap;
  final VoidCallback onDismiss;

  String _getTimeAgo(DateTime dateTime) {
    final difference = DateTime.now().difference(dateTime);
    if (difference.inMinutes < 60) return '${difference.inMinutes} min ago';
    if (difference.inHours < 24) return '${difference.inHours} hr ago';
    return '${difference.inDays} days ago';
  }

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(alert.title + alert.dateTime.toString()),
      direction: DismissDirection.endToStart,
      confirmDismiss: (direction) async {
        onDismiss();
        return false;
      },
      background: Container(
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 24),
        decoration: BoxDecoration(
          color: AppColors.emeraldGreen.withOpacity(0.8),
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: const Icon(Icons.check_rounded, color: Colors.white),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16.r),
        child: Opacity(
          opacity: alert.isRead ? 0.5 : 1.0,
          child: AlertContainer(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: alert.alertSeverity == AlertSeverity.critical
                        ? AppColors.wineRed
                        : AppColors.burntOrange,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: SvgPicture.asset(
                    alert.iconPath,
                    width: 24,
                    height: 24,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        alert.title,
                        style: Styles.style14Medium
                            .copyWith(color: AppColors.white),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        alert.description,
                        style: Styles.style12Regular
                            .copyWith(color: AppColors.coolGray),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  _getTimeAgo(alert.dateTime),
                  style:
                      Styles.style10Regular.copyWith(color: AppColors.coolGray),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
