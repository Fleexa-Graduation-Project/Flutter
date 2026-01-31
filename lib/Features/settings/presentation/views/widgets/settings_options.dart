import 'package:fleexa/Features/settings/domain/settings_enums.dart';
import 'package:fleexa/core/router/app_router.dart';
import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';
import 'settings_card.dart';
import 'settings_drop_down.dart';

class SettingsOptions extends StatefulWidget {
  const SettingsOptions({super.key});

  @override
  State<SettingsOptions> createState() => _SettingsOptionsState();
}

class _SettingsOptionsState extends State<SettingsOptions> {
  AppLanguage _language = AppLanguage.en;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Account and Security
        SettingsCard(
          title: S.of(context).settingsAccountAndSecurity,
          icon: Icons.person_outline_rounded,
          forwardArrow: true,
          pageRouteName: AppRouter.settingsAccount,
        ),
        const SizedBox(height: 20),

        // Notifications and Alerts
        SettingsCard(
          title: S.of(context).settingsNotificationsAndAlerts,
          icon: Icons.notifications_none_rounded,
          forwardArrow: true,
          pageRouteName: AppRouter.settingsNotifications,
        ),
        const SizedBox(height: 20),

        // Language
        SettingsCard(
          title: S.of(context).settingsLanguage,
          icon: Icons.language_rounded,
          dropDown: SettingsDropDown<AppLanguage>(
            value: _language,
            items: AppLanguage.values,
            labelBuilder: (language) {
              return language == AppLanguage.en
                  ? S.of(context).languageEnglish
                  : S.of(context).languageArabic;
            },
            onChanged: (value) {
              setState(() {
                _language = value;
              });
            },
          ),
        ),
        const SizedBox(height: 20),

        // About and Support
        SettingsCard(
          title: S.of(context).settingsAboutAndSupport,
          icon: Icons.info_outline_rounded,
        ),
        const SizedBox(height: 20),

        // Log Out
        SettingsCard(
          title: S.of(context).settingsLogOut,
          icon: Icons.logout,
        ),
      ],
    );
  }
}
