import 'package:fleexa/Features/overview/system_overview/presentation/manager/system_overview_cubit/system_overview_cubit.dart';
import 'package:fleexa/Features/overview/system_overview/presentation/manager/system_overview_cubit/system_overview_state.dart';
import 'package:fleexa/Features/overview/system_overview/presentation/views/widgets/summaries_section.dart';
import 'package:fleexa/Features/overview/system_overview/presentation/views/widgets/syncfusion_charts/alert_chart_card.dart';
import 'package:fleexa/Features/overview/system_overview/presentation/views/widgets/syncfusion_charts/energy_chart_card.dart';
import 'package:fleexa/Features/overview/system_overview/presentation/views/widgets/devices_grid.dart';
import 'package:fleexa/Features/overview/system_overview/presentation/views/widgets/gas_sensor_overview.dart';
import 'package:fleexa/Features/overview/system_overview/presentation/views/widgets/horizontal_card_scroller.dart';
import 'package:fleexa/Features/overview/system_overview/presentation/views/widgets/system_overview_header.dart';
import 'package:fleexa/Features/overview/system_overview/presentation/views/widgets/system_status_card.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SystemOverviewView extends StatelessWidget {
  const SystemOverviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<SystemOverviewCubit, SystemOverviewState>(
          builder: (context, state) {
            if (state is SystemOverviewLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state is SystemOverviewFailure) {
              return Center(child: Text(state.error));
            }

            if (state is SystemOverviewSuccess) {
              final data = state.data;

              return SingleChildScrollView(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SystemOverviewHeader(),
                      const SizedBox(height: 18),
                      SystemStatusCard(
                        systemStatus: data.systemStatus,
                        devicesOnline: data.devicesOnline,
                      ),
                      const SizedBox(height: 32),
                      Text(
                        S.of(context).labelInsights,
                        style: Styles.style18Medium,
                      ),
                      const SizedBox(height: 24),
                      const HorizontalCardScroller(
                        height: 340,
                        cards: [
                          AlertChartCard(),
                          EnergyChartCard(
                           
                          ),
                        ],
                      ),
                      const SizedBox(height: 32),
                      Text(
                        S.of(context).labelSummaries,
                        style: Styles.style18Medium,
                      ),
                      const SizedBox(height: 24),
                 const SummariesSection()
                    ],
                  ),
                ),
              );
            }

            return const SizedBox();
          },
        ),
      ),
    );
  }
}
