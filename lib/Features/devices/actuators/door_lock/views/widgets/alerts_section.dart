import 'package:flutter/material.dart';
import 'package:timelines_plus/timelines_plus.dart';

import '../../../../../../core/utils/common_widgets/alert_card.dart';
import '../../../../../../core/utils/constants/app_colors.dart';
import '../../data/dummy_data.dart';

class AlertsSection extends StatelessWidget {
  const AlertsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Timeline.tileBuilder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      theme: TimelineThemeData(
        nodePosition: 0,
        indicatorPosition: 0.5,
        connectorTheme: const ConnectorThemeData(
          thickness: 4,
          color: AppColors.darkMaroon,
        ),
        indicatorTheme: const IndicatorThemeData(
          size: 10,
          color: AppColors.darkMaroon,
        ),
      ),
      builder: TimelineTileBuilder.fromStyle(
        contentsAlign: ContentsAlign.basic,
        indicatorStyle: IndicatorStyle.dot,
        itemCount: alerts.length,
        contentsBuilder: (context, index) {
          final alert = alerts[index];
          return Padding(
            padding: const EdgeInsets.only(
              left: 8,
              top: 12,
              bottom: 12,
            ),
            child: AlertCard(alert: alert),
          );
        },
      ),
    );
  }
}
