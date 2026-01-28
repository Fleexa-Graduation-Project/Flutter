import 'package:fleexa/Features/overview/system_overview/views/widgets/alerts_chart_data.dart';
import 'package:fleexa/Features/overview/system_overview/views/widgets/alerts_header.dart';
import 'package:fleexa/Features/overview/system_overview/views/widgets/alerts_line_chart.dart';
import 'package:fleexa/Features/overview/system_overview/views/widgets/dashboard_section_container.dart';
import 'package:fleexa/Features/overview/system_overview/views/widgets/status_legend_row.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';

class AlertsWarningsChart extends StatefulWidget {
  const AlertsWarningsChart({super.key});

  @override
  State<AlertsWarningsChart> createState() => _AlertsWarningsChartState();
}

class _AlertsWarningsChartState extends State<AlertsWarningsChart> {
  String _selectedPeriod = S.current.filterLastWeek;

  @override
  Widget build(BuildContext context) {
    final periodData = AlertsChartData.getPeriods(context)[_selectedPeriod]!;

    return DashboardSectionContainer(
      child: Column(
        children: [
          AlertsHeader(
            title: S.of(context).labelAlertsAndWarnings,
            selectedPeriod: _selectedPeriod,
            onPeriodChanged: (val) {
              if (val != null) {
                setState(() => _selectedPeriod = val);
              }
            },
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 250,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: AlertsLineChart(
                data: periodData.data,
                labels: periodData.labels,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const StatusLegendRow(),
        ],
      ),
    );
  }
}
