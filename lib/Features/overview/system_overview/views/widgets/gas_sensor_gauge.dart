import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class GasSensorGauge extends StatelessWidget {
  final double gasLevel; // e.g., 0.82 for 82%

  const GasSensorGauge({super.key, required this.gasLevel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: SfRadialGauge(
        axes: <RadialAxis>[
          RadialAxis(
            minimum: 0,
            maximum: 100,
            showLabels: false,
            showTicks: false,
            startAngle: 135,
            endAngle: 45,
            axisLineStyle: AxisLineStyle(
              thickness: 8,
              color: Colors.white.withOpacity(0.1),
              thicknessUnit: GaugeSizeUnit.logicalPixel,
            ),
            pointers: <GaugePointer>[
              RangePointer(
                value: gasLevel * 100,
                width: 8,
                cornerStyle: CornerStyle.bothCurve,
                gradient: const SweepGradient(
                  colors: <Color>[
                    AppColors.wineRed,
                    AppColors.crimsonRed,
                  ],
                  stops: <double>[0.1, 0.9],
                ),
              ),
              // The White Indicator Dot
              MarkerPointer(
                value: gasLevel * 100,
                markerType: MarkerType.circle,
                color: Colors.white,
                markerHeight: 6,
                markerWidth: 6,
              )
            ],
            annotations: <GaugeAnnotation>[
              GaugeAnnotation(
                widget: Text(S.of(context).statuscapitalcritical,
                    style: Styles.style12Regular),
                angle: 90,
                positionFactor: 0.1,
              )
            ],
          ),
        ],
      ),
    );
  }
}
