import 'package:fleexa/core/utils/constants/app_colors.dart';
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
        child: Text(
          'No recent activities.',
          style: Styles.style14Medium.copyWith(color: AppColors.coolGray),
        ),
      );
    }
    return Column(
        children: events.map(
      (eventData) {
        final String eventName = eventData['event'] ?? 'Unknown Event';
        final String eventTime = eventData['time'] ?? '--:--';

        return Padding(
          padding: const EdgeInsets.only(bottom: 12),
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
      },
    ).toList());
  }
}
