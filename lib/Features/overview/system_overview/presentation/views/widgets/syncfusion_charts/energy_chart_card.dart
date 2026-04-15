import 'package:fleexa/Features/overview/system_overview/data/models/chart_point.dart';
import 'package:fleexa/Features/overview/system_overview/presentation/views/widgets/fl_charts/energy_chart_data.dart';
import 'package:fleexa/core/utils/common_widgets/chart_time_selector.dart';
import 'package:fleexa/core/utils/constants/app_strings.dart';
import 'package:flutter/material.dart';

import '../../../../../../../generated/l10n.dart';
import 'energy_consumption_chart.dart';
import '../../../../../../../core/utils/common_widgets/system_chart_card.dart';

class EnergyChartCard extends StatefulWidget {
  const EnergyChartCard({
    super.key,
    required this.energyData,
  });
  final List<ChartPoint> energyData;

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
