import 'package:fleexa/Features/devices/sensors/gas/presentation/views/widgets/gas_sensor_gauge_widget.dart';
import 'package:fleexa/core/utils/common_widgets/custom_appbar.dart';
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
            children: [
              GasSensorGaugeWidget(
                ppmValue: 720,
                status: S.of(context).statusWarning,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
