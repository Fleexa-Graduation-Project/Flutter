import 'package:fleexa/Features/settings/presentation/views/widgets/settings_options.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';

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
                SizedBox(height: 32),

                // Settings Options
                SettingsOptions(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
