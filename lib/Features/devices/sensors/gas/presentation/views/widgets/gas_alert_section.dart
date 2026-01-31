import 'package:fleexa/Features/devices/sensors/gas/presentation/views/widgets/gas_alert_list.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';

class GasAlertsSection extends StatelessWidget {
  const GasAlertsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).labelAlertsAndWarnings,
          style: Styles.style18Medium,
        ),
        const SizedBox(height: 20),
        const GasAlertList(),
      ],
    );
  }
}
