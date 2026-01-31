import 'package:fleexa/Features/devices/sensors/gas/data/models/gas_senor_alert_model.dart';
import 'package:fleexa/Features/devices/sensors/gas/presentation/views/widgets/gas_sensor_alert.dart';
import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/core/utils/constants/app_strings.dart';
import 'package:fleexa/core/utils/constants/assets.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:timelines_plus/timelines_plus.dart';

class GasAlertList extends StatelessWidget {
  const GasAlertList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<GasSenorAlertModel> alerts = [
      GasSenorAlertModel(
          title: S.of(context).gasLevel,
          alertType: AlertType.critical,
          description:
              "${S.of(context).gasLevelValue} ${S.of(context).unitPpmText}",
          dateTime: DateTime.now().subtract(const Duration(
            hours: 2,
          )),
          iconPath: AppAssets.iconsFire),
      GasSenorAlertModel(
          title: S.of(context).gasSpikeDetected,
          alertType: AlertType.critical,
          description:
              "${S.of(context).gasLevelValue} ${S.of(context).unitPpmText}",
          dateTime: DateTime.now().subtract(const Duration(hours: 1)),
          iconPath: AppAssets.iconsFire),
    ];
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
            child: GasSensorAlert(alert: alert),
          );
        },
      ),
    );
  }
}
