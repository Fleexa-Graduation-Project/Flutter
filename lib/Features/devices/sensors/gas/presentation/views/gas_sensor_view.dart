import 'package:fleexa/Features/devices/sensors/gas/presentation/views/widgets/gas_alert_section.dart';
import 'package:fleexa/Features/devices/sensors/gas/presentation/views/widgets/gas_sensor_chart.dart';
import 'package:fleexa/Features/devices/sensors/gas/presentation/views/widgets/gas_sensor_gauge_widget.dart';
import 'package:fleexa/Features/devices/sensors/gas/presentation/views/widgets/gas_sensor_staus_card.dart';
import 'package:fleexa/core/utils/common_widgets/custom_appbar.dart';
import 'package:fleexa/core/utils/common_widgets/insight_card.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';

class GasSensorView extends StatelessWidget {
  const GasSensorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: S.of(context).gasSensor,
        infoButton: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 2,
              ),
              GasSensorGaugeWidget(
                ppmValue: 720,
                status: S.of(context).statusWarning,
              ),
              const SizedBox(
                height: 28,
              ),
              const GasSensorStausCard(),
              const SizedBox(
                height: 32,
              ),
              const GasAlertsSection(),
              const SizedBox(
                height: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).labelInsights,
                    style: Styles.style18Medium,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InsightCard(
                    title: S.of(context).gasLevel,
                    insight: const GasSensorChart(),
                    duration: S.of(context).filterLast24h,
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
