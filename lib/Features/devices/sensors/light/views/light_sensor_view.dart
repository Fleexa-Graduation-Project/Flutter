import 'package:fleexa/Features/devices/sensors/light/views/widgets/light_insights_section.dart';
import 'package:fleexa/Features/devices/sensors/light/views/widgets/light_sensor_gauge.dart';
import 'package:fleexa/Features/devices/sensors/light/views/widgets/light_status_card.dart';
import 'package:fleexa/core/utils/common_widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';

class LightSensorView extends StatelessWidget {
  const LightSensorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: S.of(context).lightSensor),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              SizedBox(height: 42),
              LightSensorGauge(luxValue: 400),
              SizedBox(height: 20),
              LightStatusCard(),
              SizedBox(height: 40),
              LightInsightsSection(),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
