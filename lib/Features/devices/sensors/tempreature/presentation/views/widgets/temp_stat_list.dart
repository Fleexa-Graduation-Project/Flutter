import 'package:fleexa/Features/devices/sensors/tempreature/data/models/temp_stat_model.dart';
import 'package:fleexa/Features/devices/sensors/tempreature/presentation/views/widgets/temp_stat_card.dart';
import 'package:fleexa/core/utils/constants/assets.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';

class TempStatList extends StatelessWidget {
  const TempStatList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<TempStatModel> tempStats = [
      TempStatModel(
          title: S.of(context).tempMin,
          value: S.of(context).acValue,
          iconPath: AppAssets.iconsMin),
      TempStatModel(
          title: S.of(context).tempMax,
          value: S.of(context).acValue,
          iconPath: AppAssets.iconsMax),
      TempStatModel(
          title: S.of(context).tempAvg,
          value: S.of(context).acValue,
          iconPath: AppAssets.iconsAvg),
    ];
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: tempStats
            .map((stat) => Expanded(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: TempStatCard(tempStatModel: stat),
                )))
            .toList());
  }
}
