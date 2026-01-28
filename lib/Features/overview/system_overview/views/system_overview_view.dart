import 'package:fleexa/Features/overview/system_overview/views/widgets/alerts_warnings_chart.dart';
import 'package:fleexa/Features/overview/system_overview/views/widgets/devices_grid.dart';
import 'package:fleexa/Features/overview/system_overview/views/widgets/energy_consumption_chart.dart';
import 'package:fleexa/Features/overview/system_overview/views/widgets/gas_sensor_overview.dart';
import 'package:fleexa/Features/overview/system_overview/views/widgets/horizontal_card_scroller.dart';
import 'package:fleexa/Features/overview/system_overview/views/widgets/system_overview_header.dart';
import 'package:fleexa/Features/overview/system_overview/views/widgets/system_status_card.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';

class SystemOverviewView extends StatelessWidget {
  const SystemOverviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SystemOverviewHeader(),
                const SizedBox(height: 16),
                const SystemStatusCard(),
                const SizedBox(height: 32),
                Text("Insights", style: Styles.style18Medium),
                const SizedBox(height: 24),
                const HorizontalCardScroller(
                  cards: [
                    AlertsWarningsChart(),
                    EnergyConsumptionChart(),
                  ],
                ),
                const SizedBox(height: 32),
                Text(
                  S.of(context).labelSummaries,
                  style: Styles.style18Medium,
                ),
                const SizedBox(height: 24),
                const GasSensorOverview(),
                const SizedBox(height: 24),
                const DevicesGrid()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
