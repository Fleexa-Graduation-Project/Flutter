
import 'package:fleexa/Features/overview/system_overview/presentation/manager/Energy_cubit/energy_cubit.dart';
import 'package:fleexa/Features/overview/system_overview/presentation/manager/alerts_chart_cubit/alerts_chart_cubit.dart';
import 'package:fleexa/Features/overview/system_overview/presentation/manager/system_overview_cubit/system_overview_cubit.dart';
import 'package:fleexa/core/utils/common_widgets/chart_time_selector.dart';
import 'package:fleexa/core/utils/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../generated/l10n.dart';
import 'energy_consumption_chart.dart';
import '../../../../../../../core/utils/common_widgets/system_chart_card.dart';

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
      insight: EnergyConsumptionChart(range: currentValue),
      timeFilter: ChartTimeSelector(
        currentValue: currentValue,
        onChanged: (value) {
          if (value == null) return;

          setState(() {
            currentValue = value;
          });

          context.read<EnergyCubit>().getEnergy(
                period: value.apiValue,
              );
        },
      ),
    );
  }
}