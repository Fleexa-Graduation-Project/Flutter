import 'package:fleexa/Features/overview/system_overview/views/widgets/syncfusion_charts/chart_time_selector.dart';
import 'package:fleexa/core/utils/constants/app_strings.dart';
import 'package:flutter/material.dart';

import '../../../../../../generated/l10n.dart';
import 'energy_consumption_chart.dart';
import 'system_chart_card.dart';

class EnergyChartCard extends StatefulWidget {
  const EnergyChartCard({super.key});

  @override
  State<EnergyChartCard> createState() => _EnergyChartCardState();
}

class _EnergyChartCardState extends State<EnergyChartCard> {
  TimeRange currentValue = TimeRange.lastWeek;
  @override
  Widget build(BuildContext context) {
    return SystemChartCard(
      title: S.of(context).labelEnergyConsumption,
      insight: EnergyConsumptionChart(
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
