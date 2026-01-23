// ignore_for_file: deprecated_member_use

import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import 'widgets/settings_card.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 72,
              horizontal: 24,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                Text(
                  S.of(context).settingsTitle,
                  style: Styles.style24Medium,
                ),
                SizedBox(height: 40),

                // Settings Options
                SettingsCard(
                  title: S.of(context).settingsAccountAndSecurity,
                  icon: Icons.person_outline_rounded,
                ),
                SizedBox(height: 20),
                SettingsCard(
                  title: S.of(context).settingsNotificationsAndAlerts,
                  icon: Icons.notifications_none_rounded,
                ),
                SizedBox(height: 20),
                SettingsCard(
                  title: S.of(context).settingsThemeMode,
                  icon: Icons.brightness_6_outlined,
                ),
                SizedBox(height: 20),
                SettingsCard(
                  title: S.of(context).settingsLanguage,
                  icon: Icons.language_outlined,
                ),
                SizedBox(height: 20),
                SettingsCard(
                  title: S.of(context).settingsAboutAndSupport,
                  icon: Icons.info_outline_rounded,
                ),
                SizedBox(height: 20),
                SettingsCard(
                  title: S.of(context).settingsLogOut,
                  icon: Icons.logout,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
