import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';
import 'settings_notifications_card.dart';
import 'settings_checkbox.dart';

class NotificationsUserPreferences extends StatefulWidget {
  const NotificationsUserPreferences({super.key});

  @override
  State<NotificationsUserPreferences> createState() =>
      _NotificationsUserPreferencesState();
}

class _NotificationsUserPreferencesState
    extends State<NotificationsUserPreferences> {
  bool criticalAlerts = false;
  bool warningAlerts = false;
  bool infoLogs = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Critical Alerts Option Card
        SettingsNotificationsCard(
          title: S.of(context).SettingsCriticalAlerts,
          subtitle: S.of(context).settingsCriticalAlertsDescription,
          onTap: () => setState(() {
            criticalAlerts = !criticalAlerts;
          }),
          trailingWidget: SettingsCheckbox(
            value: criticalAlerts,
            onChanged: (value) => setState(() {
              criticalAlerts = value;
            }),
          ),
        ),
        const SizedBox(height: 16),

        // Warning Alerts Option Card
        SettingsNotificationsCard(
          title: S.of(context).settingsWarningAlerts,
          subtitle: S.of(context).settingsWarningAlertsDescription,
          onTap: () => setState(() {
            warningAlerts = !warningAlerts;
          }),
          trailingWidget: SettingsCheckbox(
            value: warningAlerts,
            onChanged: (value) => setState(() {
              warningAlerts = value;
            }),
          ),
        ),
        const SizedBox(height: 16),

        // Info logs Option Card
        SettingsNotificationsCard(
          title: S.of(context).settingsInfoLogs,
          subtitle: S.of(context).settingsInfoLogsDescription,
          onTap: () => setState(() {
            infoLogs = !infoLogs;
          }),
          trailingWidget: SettingsCheckbox(
            value: infoLogs,
            onChanged: (value) => setState(() {
              infoLogs = value;
            }),
          ),
        ),
      ],
    );
  }
}
