import 'package:fleexa/Features/devices/sensors/light/views/widgets/light_sensor_chart.dart';
import 'package:fleexa/core/utils/common_widgets/insight_card.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';

class LightInsightsSection extends StatelessWidget {
  const LightInsightsSection({super.key});

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
          title: S.of(context).lightLevelOverTime,
          insight: const LightSensorChart(),
          duration: S.of(context).filterLast24h,
        ),
      ],
    );
  }
}
