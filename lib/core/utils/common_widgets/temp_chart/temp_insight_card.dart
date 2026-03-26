import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../constants/app_strings.dart';
import '../chart_time_selector.dart';
import '../system_chart_card.dart';
import 'temp_chart.dart';

class TempInsightCard extends StatefulWidget {
  const TempInsightCard({super.key});

  @override
  State<TempInsightCard> createState() => _TempInsightCardState();
}

class _TempInsightCardState extends State<TempInsightCard> {
  TimeRange currentValue = TimeRange.lastWeek;

  @override
  Widget build(BuildContext context) {
    return SystemChartCard(
      title: S.of(context).tempPerformance,
      insight: TempChart(
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
