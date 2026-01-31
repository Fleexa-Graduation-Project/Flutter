import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/core/utils/constants/app_strings.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';

class ChartTimeSelector extends StatelessWidget {
  final TimeRange currentValue;
  final ValueChanged<TimeRange?> onChanged;
  const ChartTimeSelector(
      {super.key, required this.currentValue, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.white50),
        borderRadius: BorderRadius.circular(8),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<TimeRange>(
          isDense: true,
          value: currentValue,
          dropdownColor: const Color(0xFF1E1E1E),
          icon: const Icon(
            Icons.keyboard_arrow_down,
            color: AppColors.coolGray,
            size: 18,
          ),
          style: const TextStyle(color: AppColors.coolGray, fontSize: 12),
          items: [
            DropdownMenuItem(
              value: TimeRange.lastWeek,
              child: Text(
                S.of(context).filterLastWeek,
                style: Styles.style10Regular,
              ),
            ),
            DropdownMenuItem(
              value: TimeRange.lastMonth,
              child: Text(
                S.of(context).filterLastMonth,
                style: Styles.style10Regular,
              ),
            ),
          ],
          onChanged: onChanged,
        ),
      ),
    );
  }
}
