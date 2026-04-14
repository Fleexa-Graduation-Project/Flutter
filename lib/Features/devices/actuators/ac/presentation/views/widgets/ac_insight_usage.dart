import 'package:fleexa/core/utils/common_widgets/system_chart_card.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../core/utils/common_widgets/chart_time_selector.dart';
import '../../../../../../../../core/utils/constants/app_strings.dart';
import '../../../../../../../../generated/l10n.dart';
import 'usage_chart.dart';

class AcInsightUsage extends StatefulWidget {
  const AcInsightUsage({super.key});

  @override
  State<AcInsightUsage> createState() => _AcInsightUsageState();
}

class _AcInsightUsageState extends State<AcInsightUsage> {
  TimeRange currentValue = TimeRange.lastWeek;
  @override
  Widget build(BuildContext context) {
    return SystemChartCard(
      cardHeight: 350,
      title: S.of(context).AirConditionerUsage,
      insight: UsageChart(timerange: currentValue),
      timeFilter: ChartTimeSelector(
        currentValue: currentValue,
        onChanged: (value) {
          setState(() {
            currentValue = value!;
          });
        },
      ),
    );
  }
}
