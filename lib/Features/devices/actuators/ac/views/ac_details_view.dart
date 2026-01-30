import 'package:fleexa/Features/devices/actuators/ac/views/widgets/ac_details_card.dart';
import 'package:fleexa/Features/devices/actuators/ac/views/widgets/ac_insights.dart';
import 'package:fleexa/Features/devices/actuators/ac/views/widgets/related_device_section.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/common_widgets/custom_appbar.dart';
import '../../../../../generated/l10n.dart';

class AcDetailsView extends StatelessWidget {
  const AcDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: S.of(context).airConditioner,
      ),
      body: const SafeArea(
        child: Center(
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
    );
  }
}
