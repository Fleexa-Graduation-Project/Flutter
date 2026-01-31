import 'package:fleexa/core/utils/common_widgets/insight_card.dart';
import 'package:fleexa/Features/devices/actuators/ac/views/widgets/usage_chart.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/constants/styles.dart';
import '../../../../../../generated/l10n.dart';
import '../../../../../../core/utils/common_widgets/temp_chart.dart';

class AcInsights extends StatelessWidget {
  const AcInsights({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).labelInsights,
          style: Styles.style18Medium,
        ),
        const SizedBox(height: 20),
        InsightCard(
          title: S.of(context).tempPerformance,
          insight: const TempChart(),
          duration: S.of(context).filterLast24h,
        ),
        const SizedBox(height: 24),
        InsightCard(
          title: S.of(context).AirConditionerUsage,
          insight: const UsageChart(),
          duration: S.of(context).filterFiveDays,
        ),
      ],
    );
  }
}
