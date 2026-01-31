import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';

class TempLegendRow extends StatelessWidget {
  const TempLegendRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.crimsonRed,
          ),
        ),
        const SizedBox(width: 8),
        Text(
          S.of(context).temperature,
          style: Styles.style10Regular.copyWith(color: AppColors.white80),
        ),
      ],
    );
  }
}
