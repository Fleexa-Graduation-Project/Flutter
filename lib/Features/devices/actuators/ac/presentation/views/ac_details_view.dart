import 'package:fleexa/Features/devices/actuators/ac/presentation/views/widgets/ac_details_card.dart';
import 'package:fleexa/Features/devices/actuators/ac/presentation/views/widgets/ac_insights.dart';
import 'package:fleexa/Features/devices/actuators/ac/presentation/views/widgets/related_device_section.dart';
import 'package:fleexa/Features/devices/shared/presentation/manager/device_details_cubit.dart';
import 'package:fleexa/Features/devices/shared/presentation/manager/device_telemetry_cubit.dart';
import 'package:fleexa/core/widgets/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/widgets/custom_appbar.dart';
import '../../../../../../../generated/l10n.dart';

class AcDetailsView extends StatelessWidget {
  const AcDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: S.of(context).airConditioner,
      ),
      body: SafeArea(
        child: CustomRefreshIndicator(
          onRefresh: () async {
            await Future.wait([
              context
                  .read<DeviceDetailsCubit>()
                  .loadDeviceData("ac-curtain-01"),
              context
                  .read<DeviceTelemetryCubit>()
                  .loadTelemetry('ac-curtain-01', metric: 'power_state'),
            ]);
          },
          child: const Center(
            child: Padding(
              padding: EdgeInsets.all(24),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AcDetailsCard(),
                    SizedBox(height: 32),
                    RelatedDeviceSection(),
                    SizedBox(height: 32),
                    AcInsights(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
