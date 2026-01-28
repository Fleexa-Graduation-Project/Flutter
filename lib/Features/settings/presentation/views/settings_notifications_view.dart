import 'package:fleexa/Features/settings/presentation/views/widgets/disabled_section.dart';
import 'package:fleexa/Features/settings/presentation/views/widgets/settings_notifications_card.dart';
import 'package:fleexa/Features/settings/presentation/views/widgets/settings_switch.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';

import 'widgets/notifications_user_preferences.dart';

class SettingsNotificationsView extends StatefulWidget {
  const SettingsNotificationsView({super.key});

  @override
  State<SettingsNotificationsView> createState() =>
      _SettingsNotificationsViewState();
}

class _SettingsNotificationsViewState extends State<SettingsNotificationsView> {
  bool isPushEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).settingsNotificationsAndAlerts),
        centerTitle: true,
        titleTextStyle: Styles.style20Medium,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 24,
              horizontal: 16,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Push Notifications Card
                SettingsNotificationsCard(
                  title: S.of(context).settingsPushNotifications,
                  trailingWidget: SettingsSwitch(
                    value: isPushEnabled,
                    onChanged: (value) {
                      setState(() {
                        isPushEnabled = value;
                      });
                    },
                  ),
                ),
                const SizedBox(height: 16),

                // User Preferences Options
                DisabledSection(
                  isEnabled: isPushEnabled,
                  child: const NotificationsUserPreferences(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
