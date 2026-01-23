// ignore_for_file: deprecated_member_use

import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/constants/app_colors.dart';
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
                Text(
                  S.of(context).settingsTitle,
                  style: Styles.style24Medium,
                ),
                SizedBox(height: 40),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  decoration: BoxDecoration(
                    color: AppColors.charcoalBlack,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.12),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: AppColors.darkGray,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          Icons.person_outline_rounded,
                          color: AppColors.white,
                        ),
                      ),
                      SizedBox(width: 12),
                      Text(
                        S.of(context).settingsAccountAndSecurity,
                        style: Styles.style16Medium,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
