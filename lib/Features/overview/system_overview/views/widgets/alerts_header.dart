import 'package:fleexa/Features/overview/system_overview/views/widgets/time_frame_selector.dart';
import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:flutter/material.dart';

class AlertsHeader extends StatelessWidget {
  final String title;
  final String selectedPeriod;
  final ValueChanged<String?> onPeriodChanged;

  const AlertsHeader({
    super.key,
    required this.title,
    required this.selectedPeriod,
    required this.onPeriodChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Styles.style12Medium.copyWith(color: AppColors.white),
        ),
        TimeFrameSelector(
          currentValue: selectedPeriod,
          onChanged: onPeriodChanged,
        ),
      ],
    );
  }
}
