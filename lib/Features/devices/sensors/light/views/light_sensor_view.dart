import 'package:fleexa/Features/devices/sensors/light/views/widgets/light_insights_section.dart';
import 'package:fleexa/Features/devices/sensors/light/views/widgets/light_sensor_gauge.dart';
import 'package:fleexa/Features/devices/sensors/light/views/widgets/light_status_card.dart';
import 'package:fleexa/Features/devices/shared/presentation/manager/device_details_cubit.dart';
import 'package:fleexa/core/utils/common_widgets/custom_appbar.dart';
import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../generated/l10n.dart';
import '../../../shared/presentation/manager/device_details_state.dart';

class LightSensorView extends StatelessWidget {
  const LightSensorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: S.of(context).lightSensor),
      body: BlocBuilder<DeviceDetailsCubit, DeviceDetailsState>(
        builder: (context, state) {
          if (state is DeviceDetailsLoading || state is DeviceDetailsInitial) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is DeviceDetailsError) {
            return Center(
              child: Text(
                state.message,
                style:
                    Styles.style12Medium.copyWith(color: AppColors.crimsonRed),
              ),
            );
          } else if (state is DeviceDetailsLoaded) {
            final device = state.device;
            final double luxValue =
                (device.payload['light_level'] ?? 0).toDouble();

            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    const SizedBox(height: 42),
                    LightSensorGauge(luxValue: luxValue),
                    const SizedBox(height: 20),
                    LightStatusCard(
                      status: device.status,
                      operationalState: device.operationalState,
                    ),
                    const SizedBox(height: 40),
                    const LightInsightsSection(),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
