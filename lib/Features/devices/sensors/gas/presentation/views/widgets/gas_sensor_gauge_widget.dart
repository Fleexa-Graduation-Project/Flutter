import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class GasSensorGaugeWidget extends StatelessWidget {
  final double ppmValue;
  final String status;

  const GasSensorGaugeWidget({
    super.key,
    required this.ppmValue,
    required this.status,
  });

  Color _getStatusColor() {
    if (ppmValue < 300) return AppColors.emeraldGreen;
    if (ppmValue < 600) return AppColors.copperOrange;
    return AppColors.burgundy;
  }

  @override
  Widget build(BuildContext context) {
    final statusColor = _getStatusColor();

    return AspectRatio(
      aspectRatio: 1,
      child: SfRadialGauge(
        axes: <RadialAxis>[
          RadialAxis(
            minimum: 0,
            maximum: 1000,
            startAngle: 130,
            endAngle: 50,
            showLabels: true,
            showTicks: true,
            radiusFactor: 0.95,
            labelsPosition: ElementsPosition.outside,
            ticksPosition: ElementsPosition.outside,
            labelOffset: 20,
            tickOffset: 5,
            axisLabelStyle: const GaugeTextStyle(
              color: AppColors.white50,
              fontSize: 14,
            ),
            majorTickStyle: const MajorTickStyle(
                length: 12, thickness: 2, color: AppColors.white50),
            axisLineStyle: AxisLineStyle(
              thickness: 10,
              color: AppColors.white.withOpacity(0.1),
              cornerStyle: CornerStyle.bothCurve,
            ),
            annotations: <GaugeAnnotation>[
              GaugeAnnotation(
                positionFactor: 0,
                widget: Container(
                  width: 190,
                  height: 190,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                    border: Border.all(
                      color: AppColors.dimGray,
                      width: 12,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${ppmValue.toInt()} PPM',
                        style: Styles.style18SemiBold
                            .copyWith(color: AppColors.white, fontSize: 24),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        status,
                        style: Styles.style14Regular
                            .copyWith(color: AppColors.mediumGray),
                      ),
                    ],
                  ),
                ),
              ),
            ],
            pointers: <GaugePointer>[
              RangePointer(
                value: ppmValue,
                width: 12,
                enableAnimation: true,
                animationDuration: 1300,
                cornerStyle: CornerStyle.bothCurve,
                gradient: SweepGradient(
                  colors: <Color>[
                    statusColor.withOpacity(0.3),
                    statusColor,
                  ],
                  stops: const <double>[0.1, 1],
                ),
              ),
              MarkerPointer(
                value: ppmValue,
                markerType: MarkerType.circle,
                color: statusColor,
                markerHeight: 15,
                markerWidth: 15,
              )
            ],
          ),
        ],
      ),
    );
  }
}
