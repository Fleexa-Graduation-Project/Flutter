import 'package:fleexa/Features/devices/sensors/temperature/data/models/temp_stat_model.dart';
import 'package:fleexa/Features/devices/sensors/temperature/presentation/manager/temp_telemetry_cubit/temp_telemetry_cubit.dart';
import 'package:fleexa/Features/devices/sensors/temperature/presentation/manager/temp_telemetry_cubit/temp_telemetry_state.dart';
import 'package:fleexa/Features/devices/sensors/temperature/presentation/views/widgets/temp_stat_card.dart';
import 'package:fleexa/core/utils/common_widgets/app_error.dart';
import 'package:fleexa/core/utils/common_widgets/app_loading.dart';
import 'package:fleexa/core/utils/constants/assets.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TempStatList extends StatelessWidget {
  const TempStatList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TempTelemetryCubit, TempTelemetryState>(
      builder: (context, state) {
        if (state is TempTelemetryLoading) {
          return const AppLoading();
        }

        if (state is TempTelemetryError) {
          return AppError(message: state.message);
        }

        if (state is TempTelemetryLoaded) {
          final t = state.telemetry;

          final List<TempStatModel> tempStats = [
            TempStatModel(
              title: S.of(context).tempMin,
              value: t.min.toStringAsFixed(0),
              iconPath: AppAssets.iconsMin,
            ),
            TempStatModel(
              title: S.of(context).tempMax,
              value: t.max.toStringAsFixed(0),
              iconPath: AppAssets.iconsMax,
            ),
            TempStatModel(
              title: S.of(context).tempAvg,
              value: t.average.toStringAsFixed(0),
              iconPath: AppAssets.iconsAvg,
            ),
          ];

          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: tempStats
                .map(
                  (stat) => Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: TempStatCard(tempStatModel: stat),
                    ),
                  ),
                )
                .toList(),
          );
        }

        return const SizedBox.shrink();
      },
    );
  }
}
