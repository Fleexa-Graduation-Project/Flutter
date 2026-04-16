import 'package:fleexa/core/utils/common_widgets/custom_container.dart';
import 'package:fleexa/Features/overview/system_overview/presentation/views/widgets/gas_sensor_gauge.dart';
import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';

class GasSensorOverview extends StatelessWidget {
  const GasSensorOverview({super.key, required this.gasLevel});
  final double gasLevel;
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).gasSensor,
                style: Styles.style14Medium.copyWith(color: AppColors.white),
              ),
              const SizedBox(height: 4),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: "${S.of(context).gasLevel} ",
                        style: Styles.style12Regular),
                    TextSpan(text: "$gasLevel", style: Styles.style12SemiBold),
                    TextSpan(
                        text: " ${S.of(context).unitPpmText}",
                        style: Styles.style12Regular),
                  ],
                ),
              )
            ],
          ),
          const GasSensorGauge(gasLevel: 0.9),
        ],
      ),
    ));
  }
}
