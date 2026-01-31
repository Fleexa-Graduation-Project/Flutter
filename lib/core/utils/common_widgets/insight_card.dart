import 'package:flutter/material.dart';

import 'custom_container.dart';
import '../constants/app_colors.dart';
import '../constants/styles.dart';

class InsightCard extends StatelessWidget {
  const InsightCard({
    super.key,
    required this.title,
    required this.insight,
    required this.duration,
  });

  final String title;
  final Widget insight;
  final String duration;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      bottomPadding: 4,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  title,
                  style: Styles.style12Medium.copyWith(
                    color: AppColors.white,
                  ),
                ),
                const Spacer(),
                Text(
                  duration,
                  style: Styles.style10Regular.copyWith(
                    color: AppColors.coolGray,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 240,
              width: double.infinity,
              child: insight,
            ),
          ],
        ),
      ),
    );
  }
}
