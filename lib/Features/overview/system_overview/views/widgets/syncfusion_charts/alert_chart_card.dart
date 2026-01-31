import 'package:fleexa/Features/overview/system_overview/views/widgets/syncfusion_charts/chart_time_selector.dart';
import 'package:fleexa/core/utils/constants/app_strings.dart';
import 'package:flutter/material.dart';

import '../../../../../../generated/l10n.dart';
import 'alert_warning_chart.dart';
import 'system_chart_card.dart';

class AlertChartCard extends StatefulWidget {
  const AlertChartCard({super.key});

  @override
  State<AlertChartCard> createState() => _AlertChartCardState();
}

class _AlertChartCardState extends State<AlertChartCard> {
  TimeRange currentValue = TimeRange.lastWeek;
  @override
  Widget build(BuildContext context) {
    return SystemChartCard(
      title: S.of(context).labelAlertsAndWarnings,
      insight: AlertWarningChart(
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
