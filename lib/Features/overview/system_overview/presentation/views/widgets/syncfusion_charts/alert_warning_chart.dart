import 'package:fleexa/Features/overview/system_overview/presentation/manager/alerts_chart_cubit/alerts_chart_cubit.dart';
import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/core/utils/constants/app_strings.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../../../../core/widgets/app_error.dart';
import '../../../../../../../core/widgets/app_loading.dart';
import '../../../../../../../core/utils/constants/styles.dart';
import '../../../../data/models/alerts_chart.dart';

class AlertWarningChart extends StatelessWidget {
  const AlertWarningChart({super.key, required this.range});

  final TimeRange range;

  double _getMaxY(AlertsChart data) {
    final allValues = <int>[
      ...data.warning.map((e) => e.value.toInt()),
      ...data.critical.map((e) => e.value.toInt()),
    ];

    final maxValue =
        allValues.isNotEmpty ? allValues.reduce((a, b) => a > b ? a : b) : 0;

    return (maxValue == 0 ? 5 : maxValue * 1.2).ceilToDouble();
  }

  double _getInterval(double max) {
    return  (max / 5).ceilToDouble();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AlertsChartCubit, AlertsChartState>(
      builder: (context, state) {
        if (state is AlertsChartLoading) {
          return const AppLoading();
        }

        if (state is AlertsChartFailure) {
          return AppError(message: state.error);
        }

        if (state is AlertsChartSuccess) {
          final data = state.data;

          final yMax = _getMaxY(data);
          final interval = _getInterval(yMax);

          return SfCartesianChart(
            key: ValueKey(range),
            plotAreaBorderWidth: 0,
            legend: Legend(
              isVisible: true,
              position: LegendPosition.bottom,
              iconHeight: 12,
              iconWidth: 12,
              textStyle: Styles.style12Regular.copyWith(
                color: AppColors.lightGray,
              ),
            ),
            primaryXAxis: CategoryAxis(
              labelPlacement: LabelPlacement.onTicks,
              majorGridLines: const MajorGridLines(
                width: 1,
                color: Color(0xFF333333),
                dashArray: [5, 5],
              ),
              axisLine: const AxisLine(width: 1),
              tickPosition: TickPosition.outside,
              majorTickLines: const MajorTickLines(
                size: 12,
                color: Colors.transparent,
              ),
              labelStyle: Styles.style12Regular.copyWith(
                color: AppColors.lightGray,
              ),
            ),
            primaryYAxis: NumericAxis(
              minimum: 0,
              maximum: yMax,
              interval: interval,
              majorGridLines: const MajorGridLines(
                width: 1,
                color: Color(0xFF333333),
                dashArray: [5, 5],
              ),
              axisLine: const AxisLine(width: 1),
              majorTickLines: const MajorTickLines(
                size: 10,
                color: Colors.transparent,
              ),
              tickPosition: TickPosition.outside,
              labelStyle: Styles.style12Regular.copyWith(
                color: AppColors.lightGray,
              ),
            ),
            series: <CartesianSeries>[
              LineSeries(
                name: S.of(context).statusWarning,
                animationDuration: 1000,
                dataSource: data.warning,
                xValueMapper: (e, _) => e.label,
                yValueMapper: (e, _) => e.value.toInt(),
                color: AppColors.copperOrange,
                width: 3,
                markerSettings: const MarkerSettings(
                  isVisible: true,
                  borderColor: AppColors.copperOrange,
                  color: AppColors.copperOrange,
                ),
              ),
              LineSeries(
                name: S.of(context).statusCritical,
                animationDuration: 1000,
                dataSource: data.critical,
                xValueMapper: (e, _) => e.label,
                yValueMapper: (e, _) => e.value.toInt(),
                color: AppColors.crimsonRed,
                width: 3,
                markerSettings: const MarkerSettings(
                  isVisible: true,
                  borderColor: AppColors.crimsonRed,
                  color: AppColors.crimsonRed,
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
