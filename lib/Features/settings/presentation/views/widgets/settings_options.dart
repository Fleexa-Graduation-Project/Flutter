import 'package:fleexa/Features/settings/domain/settings_enums.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../generated/l10n.dart';
import 'settings_card.dart';
import 'settings_drop_down.dart';

class SettingsOptions extends StatefulWidget {
  const SettingsOptions({super.key});

  @override
  State<SettingsOptions> createState() => _SettingsOptionsState();
}

class _SettingsOptionsState extends State<SettingsOptions> {
  AppTheme _theme = AppTheme.dark;
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
        ),
        SizedBox(height: 20),

        // Notifications and Alerts
        SettingsCard(
          title: S.of(context).settingsNotificationsAndAlerts,
          icon: Icons.notifications_none_rounded,
          forwardArrow: true,
        ),
        SizedBox(height: 20),

        // Theme Mode
        SettingsCard(
          title: S.of(context).settingsThemeMode,
          icon: Icons.brightness_6_outlined,
          dropDown: SettingsDropDown<AppTheme>(
            value: _theme,
            items: AppTheme.values,
            labelBuilder: (theme) {
              switch (theme) {
                case AppTheme.light:
                  return S.of(context).themeModeLight;
                case AppTheme.dark:
                  return S.of(context).themeModeDark;
                case AppTheme.system:
                  return S.of(context).themeModeSystem;
              }
            },
            onChanged: (value) {
              setState(() {
                _theme = value;
              });
            },
          ),
        ),
        SizedBox(height: 20),

        // Language
        SettingsCard(
          title: S.of(context).settingsLanguage,
          icon: FontAwesomeIcons.language,
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
        SizedBox(height: 20),

        // About and Support
        SettingsCard(
          title: S.of(context).settingsAboutAndSupport,
          icon: Icons.info_outline_rounded,
        ),
        SizedBox(height: 20),

        // Log Out
        SettingsCard(
          title: S.of(context).settingsLogOut,
          icon: Icons.logout,
        ),
      ],
    );
  }
}
