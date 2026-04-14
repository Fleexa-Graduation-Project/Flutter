import 'package:fleexa/Features/devices/actuators/ac/presentation/views/widgets/ac_temp_card.dart';
import 'package:flutter/material.dart';

class AcTempInfo extends StatelessWidget {
  const AcTempInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: AcTempCard(isOutside: true)),
        SizedBox(width: 24),
        Expanded(child: AcTempCard(isOutside: false)),
      ],
    );
  }
}
