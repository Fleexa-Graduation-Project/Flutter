// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import '../../../../../core/utils/constants/app_colors.dart';
import '../../../../../core/utils/constants/styles.dart';
import '../../../../../generated/l10n.dart';

class SettingsCard extends StatelessWidget {
  const SettingsCard({
    super.key,
    required this.title,
    required this.icon,
  });

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 18),
        decoration: BoxDecoration(
          color: AppColors.charcoalBlack,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.12),
              spreadRadius: 2,
              blurRadius: 4,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.darkGray,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Icon(
                icon,
                color: AppColors.white,
              ),
            ),
            SizedBox(width: 12),
            Text(
              title,
              style: Styles.style16Medium,
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: AppColors.coolGray,
              size: 16,
            ),
          ],
        ),
      ),
    );
  }
}
