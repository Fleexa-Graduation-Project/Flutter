import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class GasSensorGauge extends StatelessWidget {
  final double gasLevel; // e.g., 0.82

  const GasSensorGauge({super.key, required this.gasLevel});

  Color _getGaugeColor(double level) {
    if (level < 0.4) return AppColors.emeraldGreen;
    if (level < 0.7) return AppColors.copperOrange;
    return AppColors.burgundy;
  }

  @override
  Widget build(BuildContext context) {
    final currentColor = _getGaugeColor(gasLevel);

    return SizedBox(
      height: 100,
      width: 100,
      child: SfRadialGauge(
        enableLoadingAnimation: true,
        animationDuration: 2000,
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
                color: currentColor,
                enableAnimation: true,
                animationType: AnimationType.easeOutBack,
                animationDuration: 1200,
              ),
              MarkerPointer(
                value: gasLevel * 100,
                markerType: MarkerType.circle,
                color: AppColors.white,
                markerHeight: 6,
                markerWidth: 6,
                enableAnimation: true,
                animationDuration: 1200,
              )
            ],
            annotations: <GaugeAnnotation>[
              GaugeAnnotation(
                widget: AnimatedDefaultTextStyle(
                  duration: const Duration(milliseconds: 500),
                  style: Styles.style12Regular.copyWith(color: currentColor),
                  child: Text(_getStatusText(context, gasLevel)),
                ),
                angle: 90,
              )
            ],
          ),
        ],
      ),
    );
  }

  String _getStatusText(BuildContext context, double level) {
    if (level < 0.4) return S.of(context).statusSafe;
    if (level < 0.7) return S.of(context).statusWarning;
    return S.of(context).statusCritical;
  }
}
