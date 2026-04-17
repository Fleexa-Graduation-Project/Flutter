import 'package:fleexa/core/utils/common_widgets/custom_appbar.dart';
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
      body: const SafeArea(
        child: Center(child: NotificationsList()),
      ),
    );
  }
}
