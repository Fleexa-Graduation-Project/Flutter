import 'package:fleexa/Features/devices/sensors/gas/presentation/views/widgets/gas_sensor_gauge_widget.dart';
import 'package:fleexa/Features/overview/system_overview/views/widgets/gas_sensor_gauge.dart';
import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class GasSensorView extends StatelessWidget {
  const GasSensorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColors.white,
          ),
          onPressed: () => context.pop(),
        ),
        title: Text(S.of(context).gasSensor),
        centerTitle: true,
        actions: const [
          Icon(Icons.info_outline_rounded, color: AppColors.white),
          SizedBox(
            width: 16,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              GasSensorGaugeWidget(
                  ppmValue: 720, status: S.of(context).statusWarning)
            ],
          ),
        ),
      ),
    );
  }
}
