import 'package:fleexa/Features/devices/actuators/ac/presentation/views/widgets/ac_temp_card.dart';
import 'package:flutter/material.dart';

class AcTempInfo extends StatelessWidget {
  const AcTempInfo({super.key, required this.insideTemp});

  final num insideTemp;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: AcTempCard(isOutside: true, temperature: 28)),
        const SizedBox(width: 24),
        Expanded(child: AcTempCard(isOutside: false, temperature: insideTemp)),
      ],
    );
  }
}
