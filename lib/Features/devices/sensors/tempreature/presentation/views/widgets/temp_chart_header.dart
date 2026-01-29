import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';

class TempChartHeader extends StatelessWidget {
  const TempChartHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(S.of(context).temperature, style: Styles.style12Medium),
        const Spacer(),
        Text(S.of(context).filterLast24h,
            style: Styles.style10Regular.copyWith(color: AppColors.white50)),
      ],
    );
  }
}
