import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fleexa/core/utils/constants/app_strings.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:fleexa/core/utils/common_widgets/chart_time_selector.dart';
import 'package:fleexa/core/utils/common_widgets/system_chart_card.dart';

import '../../manager/temp_telemetry_cubit/temp_telemetry_cubit.dart';

import 'temp_chart.dart';

class TempInsightCard extends StatefulWidget {
  const TempInsightCard({super.key});

  @override
  State<TempInsightCard> createState() => _TempInsightCardState();
}

class _TempInsightCardState extends State<TempInsightCard> {
  TimeRange currentValue = TimeRange.lastWeek;

  @override
  Widget build(BuildContext context) {
    return SystemChartCard(
      cardHeight: 300,
      title: S.of(context).tempPerformance,
      insight: TempChart(range: currentValue),
      timeFilter: ChartTimeSelector(
        currentValue: currentValue,
        onChanged: (value) {
          if (value == null) return;

          setState(() {
            currentValue = value;
          });

          context.read<TempTelemetryCubit>().getTelemetry(
                "temp-sensor-01",
                value.apiValue,
              );
        },
      ),
    );
  }
}