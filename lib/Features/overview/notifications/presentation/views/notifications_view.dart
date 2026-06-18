import 'package:fleexa/core/widgets/custom_appbar.dart';
import 'package:fleexa/core/widgets/custom_refresh_indicator.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../manager/notifications_cubit.dart';
import 'widgets/notifications_list.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: S.of(context).homeNotifications,
        readAllButton: true,
        onReadAll: () {
          context.read<NotificationsCubit>().markAllRead();
        },
      ),
      body: SafeArea(
        child: CustomRefreshIndicator(
          onRefresh: () async {
            await context.read<NotificationsCubit>().loadNotifications();
          },
          child: const Center(child: NotificationsList()),
        ),
      ),
    );
  }
}
