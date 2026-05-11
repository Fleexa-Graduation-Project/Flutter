import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/generated/l10n.dart';

import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:flutter/material.dart';

class RecentEventsList extends StatelessWidget {
  const RecentEventsList({super.key, required this.events});

  final List<dynamic> events;

  @override
  Widget build(BuildContext context) {
    if (events.isEmpty) {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(S.of(context).noRecentActivities,
          style: Styles.style14Medium.copyWith(color: AppColors.coolGray),
        ),
      );
    }
    return Column(
      children: List.generate(events.length, (index) {
        final eventData = events[index];
        final String eventName = eventData['event'] ?? 'Unknown Event';
        final String eventTime = eventData['time'] ?? '--:--';

        final bool isLast = index == events.length - 1;

        return Padding(
          padding: EdgeInsets.only(bottom: isLast ? 0 : 12),
          child: Row(
            children: [
              Text(
                eventName,
                style: Styles.style14Medium.copyWith(color: AppColors.white),
              ),
              const Spacer(),
              Text(
                eventTime,
                style: Styles.style14Medium.copyWith(color: AppColors.white),
              ),
            ],
          ),
        );
      }),
    );
  }
}
