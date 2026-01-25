// ignore_for_file: deprecated_member_use

import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/constants/styles.dart';

class SettingsNotificationsCard extends StatelessWidget {
  const SettingsNotificationsCard({
    super.key,
    required this.title,
    this.subtitle,
    this.trailingWidget,
    this.onTap,
  });

  final String title;
  final String? subtitle;
  final Widget? trailingWidget;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 18, horizontal: 18),
        decoration: BoxDecoration(
          color: AppColors.charcoalBlack,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 4,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                Text(
                  title,
                  style: Styles.style16Medium,
                ),
                SizedBox(height: 4),

                // Subtitle
                if (subtitle != null)
                  Text(
                    subtitle!,
                    style: Styles.style12Regular.copyWith(
                      color: AppColors.coolGray,
                    ),
                  ),
              ],
            ),
            Spacer(),
            if (trailingWidget != null) trailingWidget!,
          ],
        ),
      ),
    );
  }
}
