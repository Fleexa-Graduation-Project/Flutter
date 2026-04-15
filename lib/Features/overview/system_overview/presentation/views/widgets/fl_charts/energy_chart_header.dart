import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';

class EnergyChartHeader extends StatelessWidget {
  const EnergyChartHeader({
    super.key,
    required this.value,
    required this.onChanged,
  });

  final String value;
  final ValueChanged<String?> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(S.of(context).labelEnergyConsumption,
            style: Styles.style12Medium.copyWith(color: AppColors.white)),
        _DropdownSelector(value: value, onChanged: onChanged),
      ],
    );
  }
}

class _DropdownSelector extends StatelessWidget {
  final String value;
  final ValueChanged<String?> onChanged;

  const _DropdownSelector({
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.coolGray),
        borderRadius: BorderRadius.circular(8),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          isDense: true,
          value: value,
          dropdownColor: const Color(0xFF1E1E1E),
          icon: const Icon(Icons.keyboard_arrow_down,
              color: AppColors.coolGray, size: 18),
          style: const TextStyle(color: AppColors.coolGray, fontSize: 12),
          items: [
            DropdownMenuItem(
              value: S.of(context).filterLastWeek,
              child: Text(
                S.of(context).filterLastWeek,
                style: Styles.style10Regular,
              ),
            ),
            DropdownMenuItem(
              value: S.of(context).filterLastMonth,
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
