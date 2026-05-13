import 'package:fleexa/Features/devices/sensors/gas/presentation/views/widgets/gas_alert_list.dart';
import 'package:fleexa/Features/devices/shared/presentation/manager/device_alerts_cubit.dart';
import 'package:fleexa/core/widgets/skelton.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../shared/presentation/manager/device_alerts_state.dart';

class GasAlertsSection extends StatelessWidget {
  const GasAlertsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeviceAlertsCubit, DeviceAlertsState>(
      builder: (context, state) {
        if (state is DeviceAlertsLoading || state is DeviceAlertsInitial) {
          return Column(
            children: List.generate(
              2,
              (index) => const Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Skelton(height: 85, width: double.infinity),
              ),
            ),
          );
        } else if (state is DeviceAlertsLoaded && state.alerts.isNotEmpty) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).labelAlertsAndWarnings,
                style: Styles.style18Medium,
              ),
              const SizedBox(height: 20),
              GasAlertList(alerts: state.alerts),
            ],
          );
        }
        return const SizedBox();
      },
    );
  }
}
