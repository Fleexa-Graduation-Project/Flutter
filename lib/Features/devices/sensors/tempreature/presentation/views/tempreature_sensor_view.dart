import 'package:fleexa/Features/devices/sensors/tempreature/presentation/views/widgets/circular_value_indicator.dart';
import 'package:fleexa/Features/devices/sensors/tempreature/presentation/views/widgets/related_device_card.dart';
import 'package:fleexa/Features/devices/sensors/tempreature/presentation/views/widgets/temp_info_summary.dart';
import 'package:fleexa/Features/devices/sensors/tempreature/presentation/views/widgets/temp_stat_list.dart';
import 'package:fleexa/Features/devices/sensors/tempreature/presentation/views/widgets/temperature_chart.dart';
import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TempreatureSensorView extends StatelessWidget {
  const TempreatureSensorView({super.key});

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
          title: Text(S.of(context).temperatureSensor),
          centerTitle: true,
        ),
        body: const SafeArea(
          child: SingleChildScrollView(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(height: 52),
              Center(child: CircularValueIndicator()),
              SizedBox(height: 40),
              TempInfoSummary(),
              SizedBox(height: 24),
              TempStatList(),
              SizedBox(height: 32),
              RelatedDeviceCard(),
              SizedBox(height: 32),
              SizedBox(height: 20),
              TemperatureChart()
            ]),
          )),
        ));
  }
}
