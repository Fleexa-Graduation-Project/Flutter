import 'package:fleexa/Features/devices/sensors/light/views/widgets/light_sensor_chart.dart';
import 'package:fleexa/core/utils/common_widgets/chart_time_selector.dart';
import 'package:fleexa/core/utils/common_widgets/system_chart_card.dart';
import 'package:fleexa/core/utils/constants/app_strings.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';

class LightInsightsSection extends StatefulWidget {
  const LightInsightsSection({super.key});

  @override
  State<LightInsightsSection> createState() => _LightInsightsSectionState();
}

class _LightInsightsSectionState extends State<LightInsightsSection> {
  TimeRange currentValue = TimeRange.lastWeek;
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
        SystemChartCard(
          title: S.of(context).lightLevelOverTime,
          insight: LightSensorChart(
            range: currentValue,
          ),
          timeFilter: ChartTimeSelector(
            currentValue: currentValue,
            onChanged: (value) {
              setState(() {
                currentValue = value!;
              });
            },
          ),
        ),
      ],
    );
  }
}
