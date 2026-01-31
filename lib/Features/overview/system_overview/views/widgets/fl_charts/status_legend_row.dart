import 'package:fleexa/Features/overview/system_overview/views/widgets/fl_charts/legend_item.dart';
import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';

class StatusLegendRow extends StatelessWidget {
  const StatusLegendRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LegendItem(
            color: AppColors.burntOrange, label: S.of(context).statusWarning),
        const SizedBox(width: 20),
        LegendItem(
            color: AppColors.darkMaroon, label: S.of(context).statusCritical),
      ],
    );
  }
}
