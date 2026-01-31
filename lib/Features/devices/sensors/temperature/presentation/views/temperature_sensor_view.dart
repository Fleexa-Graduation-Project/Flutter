import 'package:fleexa/Features/devices/sensors/temperature/presentation/views/widgets/circular_value_indicator.dart';
import 'package:fleexa/Features/devices/sensors/temperature/presentation/views/widgets/related_device_card.dart';
import 'package:fleexa/Features/devices/sensors/temperature/presentation/views/widgets/temp_info_summary.dart';
import 'package:fleexa/Features/devices/sensors/temperature/presentation/views/widgets/temp_stat_list.dart';
import 'package:fleexa/core/utils/common_widgets/custom_appbar.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/common_widgets/insight_card.dart';
import '../../../../../../core/utils/common_widgets/temp_chart.dart';

class TemperatureSensorView extends StatelessWidget {
  const TemperatureSensorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: S.of(context).temperatureSensor),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 52),
                const Center(child: CircularValueIndicator()),
                const SizedBox(height: 40),
                const TempInfoSummary(),
                const SizedBox(height: 24),
                const TempStatList(),
                const SizedBox(height: 32),
                const RelatedDeviceCard(),
                const SizedBox(height: 32),
                Text(
                  S.of(context).labelInsights,
                  style: Styles.style18Medium,
                ),
                const SizedBox(height: 20),
                InsightCard(
                  title: S.of(context).tempPerformance,
                  insight: const TempChart(),
                  duration: S.of(context).filterLast24h,
                ),
                // const SizedBox(height: 20),
                // const TemperatureChart()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
