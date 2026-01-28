import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';

class RecentEventsList extends StatelessWidget {
  const RecentEventsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              S.of(context).doorLockedStatus,
              style: Styles.style14Medium.copyWith(color: AppColors.white),
            ),
            const Spacer(),
            Text('8:45 PM',
                style: Styles.style14Medium.copyWith(color: AppColors.white)),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Text(
              S.of(context).doorUnlockedStatus,
              style: Styles.style14Medium.copyWith(color: AppColors.white),
            ),
            const Spacer(),
            Text('8:42 PM',
                style: Styles.style14Medium.copyWith(color: AppColors.white)),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Text(
              S.of(context).doorLockedStatus,
              style: Styles.style14Medium.copyWith(color: AppColors.white),
            ),
            const Spacer(),
            Text('6:15 PM',
                style: Styles.style14Medium.copyWith(color: AppColors.white)),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Text(
              S.of(context).doorUnlockedStatus,
              style: Styles.style14Medium.copyWith(color: AppColors.white),
            ),
            const Spacer(),
            Text('6:12 PM',
                style: Styles.style14Medium.copyWith(color: AppColors.white)),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Text(
              S.of(context).doorLockedStatus,
              style: Styles.style14Medium.copyWith(color: AppColors.white),
            ),
            const Spacer(),
            Text('5:10 PM',
                style: Styles.style14Medium.copyWith(color: AppColors.white)),
          ],
        ),
      ],
    );
  }
}
