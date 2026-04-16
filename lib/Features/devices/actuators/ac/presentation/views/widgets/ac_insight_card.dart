import 'package:fleexa/Features/devices/actuators/ac/presentation/views/widgets/ac_chart.dart';

import 'package:flutter/material.dart';

import '../../../../../../../generated/l10n.dart';
import '../../../../../../../core/utils/constants/app_strings.dart';
import '../../../../../../../core/utils/common_widgets/chart_time_selector.dart';
import '../../../../../../../core/utils/common_widgets/system_chart_card.dart';

class ACInsightCard extends StatefulWidget {
  const ACInsightCard({super.key});

  @override
  State<ACInsightCard> createState() => _ACInsightCardState();
}

class _ACInsightCardState extends State<ACInsightCard> {
  TimeRange currentValue = TimeRange.lastWeek;

  @override
  Widget build(BuildContext context) {
    return SystemChartCard(
      cardHeight: 300,
      title: S.of(context).tempPerformance,
      insight: AcChart(
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
    );
  }
}
