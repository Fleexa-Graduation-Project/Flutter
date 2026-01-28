import 'package:fleexa/core/utils/common_widgets/custom_container.dart';
import 'package:fleexa/Features/overview/system_overview/views/widgets/energy_bar_chart.dart';
import 'package:fleexa/Features/overview/system_overview/views/widgets/energy_chart_data.dart';
import 'package:fleexa/Features/overview/system_overview/views/widgets/energy_chart_header.dart'
    show EnergyChartHeader;
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';

class EnergyConsumptionChart extends StatefulWidget {
  const EnergyConsumptionChart({super.key});

  @override
  State<EnergyConsumptionChart> createState() => _EnergyConsumptionChartState();
}

class _EnergyConsumptionChartState extends State<EnergyConsumptionChart> {

  String? _selectedPeriod;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _selectedPeriod ??= S.of(context).filterLastWeek;
  }

  @override
  Widget build(BuildContext context) {
    final periods = EnergyChartData.getPeriods(context);
    
    final periodData = periods[_selectedPeriod] ?? periods.values.first;

    return CustomContainer(
      child: Column(
        children: [
          EnergyChartHeader(
         
            value: _selectedPeriod!, 
            onChanged: (val) {
              if (val != null) {
                setState(() => _selectedPeriod = val);
              }
            },
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 250,
            child: EnergyBarChart(
              values: periodData.values,
              labels: periodData.labels,
            ),
          ),
        ],
      ),
    );
  }
}