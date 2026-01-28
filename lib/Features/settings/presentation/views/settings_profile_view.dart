import 'package:fleexa/Features/settings/presentation/views/widgets/profile_avatar.dart';
import 'package:fleexa/Features/settings/presentation/views/widgets/profile_info_card.dart';
import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsProfileView extends StatelessWidget {
  const SettingsProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(
              FontAwesomeIcons.penToSquare,
              color: AppColors.white,
            ),
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: AppColors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(S.of(context).settingsProfile),
        centerTitle: true,
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 52,
              ),
              ProfileAvatar(),
              SizedBox(
                height: 40,
              ),
              ProfileInfoCard()
            ],
          ),
        ),
      ),
    );
  }
}
