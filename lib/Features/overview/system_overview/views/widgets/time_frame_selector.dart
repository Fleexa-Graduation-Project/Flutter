import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';

class TimeFrameSelector extends StatelessWidget {
  final String currentValue;
  final ValueChanged<String?> onChanged;
  const TimeFrameSelector(
      {super.key, required this.currentValue, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.white50),
        borderRadius: BorderRadius.circular(8),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          isDense: false,
          value: currentValue,
          dropdownColor: const Color(0xFF1E1E1E),
          icon: const Icon(Icons.keyboard_arrow_down,
              color: AppColors.coolGray, size: 18),
          style: const TextStyle(color: AppColors.coolGray, fontSize: 12),
          items: [
            DropdownMenuItem(value: S.of(context).filterLastWeek, child: Text(S.of(context).filterLastWeek)),
            DropdownMenuItem(value: S.of(context).filterLastMonth, child: Text(S.of(context).filterLastMonth)),
          ],
          onChanged: onChanged,
        ),
      ),
    );
  }
}
