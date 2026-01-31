import 'package:fleexa/core/utils/common_widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';

class LightSensorView extends StatelessWidget {
  const LightSensorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: S.of(context).lightSensor),
    );
  }
}
