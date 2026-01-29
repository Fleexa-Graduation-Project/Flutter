import 'package:fleexa/Features/overview/notifications/data/dummy_data.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/common_widgets/alert_card.dart';

class NotificationsList extends StatelessWidget {
  const NotificationsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(24),
      itemCount: notifications.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: AlertCard(
            alert: notifications[index],
          ),
        );
      },
    );
  }
}
