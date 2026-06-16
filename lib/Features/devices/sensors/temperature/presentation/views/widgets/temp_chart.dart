import 'package:fleexa/Features/devices/shared/data/models/telemetry_model.dart';
import 'package:fleexa/Features/devices/shared/presentation/manager/device_telemetry_cubit.dart';
import 'package:fleexa/Features/devices/shared/presentation/manager/device_telemetry_state.dart';
import 'package:fleexa/core/widgets/app_error.dart';
import 'package:fleexa/core/widgets/app_loading.dart';
import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../../../../core/utils/constants/app_strings.dart';
import '../../../../../../../core/utils/constants/styles.dart';

class TempChart extends StatelessWidget {
  const TempChart({super.key, required this.range});

  final TimeRange range;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeviceTelemetryCubit, DeviceTelemetryState>(
      builder: (context, state) {
        if (state is DeviceTelemetryLoading) {
          return const AppLoading();
        }

        if (state is DeviceTelemetryError) {
          return AppError(message: state.message);
        }

        if (state is DeviceTelemetryLoaded) {
          final TelemetryModel data = state.telemetry;

          return SfCartesianChart(
            key: ValueKey(range),
            plotAreaBorderWidth: 0,
            primaryXAxis: CategoryAxis(
              placeLabelsNearAxisLine: false,
              labelAlignment: LabelAlignment.center,
              labelIntersectAction: AxisLabelIntersectAction.rotate90,
              interval: 1,
              axisLine: const AxisLine(width: 1, color: AppColors.coolGray),
              labelStyle: Styles.style10Regular.copyWith(
                color: AppColors.coolGray,
              ),
              axisLabelFormatter: (args) {
                return ChartAxisLabel(args.text, args.textStyle);
              },
              majorGridLines: MajorGridLines(
                width: 1,
                color: AppColors.white.withOpacity(0.05),
                dashArray: const [5, 5],
              ),
              majorTickLines: const MajorTickLines(size: 0),
            ),
            primaryYAxis: NumericAxis(
              minimum: 0,
              maximum: data.chartMax + 5,
              interval:
                  (data.chartMax > 0) ? (data.chartMax / 5).ceilToDouble() : 50,
              labelStyle: Styles.style12Regular.copyWith(
                color: AppColors.coolGray,
              ),
              majorGridLines: MajorGridLines(
                width: 1,
                color: AppColors.white.withOpacity(0.05),
                dashArray: const [5, 5],
              ),
            ),
            legend: Legend(
              isVisible: true,
              position: LegendPosition.bottom,
              textStyle: Styles.style12Regular.copyWith(
                color: AppColors.lightGray,
              ),
            ),
            series: <CartesianSeries>[
              LineSeries(
                name: S.of(context).temperature,
                dataSource: data.data,
                xValueMapper: (e, _) => e.label,
                yValueMapper: (e, _) => e.value,
                color: AppColors.crimsonRed,
                width: 2,
                markerSettings: const MarkerSettings(
                  isVisible: true,
                  color: AppColors.crimsonRed,
                  borderColor: AppColors.crimsonRed,
                ),
              ),
            ],
          );
        }

        return const SizedBox();
      },
    );
  }
}
