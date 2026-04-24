import 'package:fleexa/Features/overview/home/presentation/views/widgets/home_appbar_welcoming.dart';
import 'package:fleexa/Features/overview/home/presentation/views/widgets/top_appbar_action_row.dart';
import 'package:flutter/material.dart';
import 'package:hotspot/hotspot.dart';

import '../../../../../../core/utils/constants/app_colors.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TopAppbarActionRow(),
        const SizedBox(height: 12),
        const HomeAppbarWelcoming().withHotspot(
          order: 1,
          title: 'Welcome to Fleexa',
          text: 'Let\'s take a quick tour to help you manage your system.',
        ),
        const Divider(height: 24, color: AppColors.darkGray),
      ],
    );
  }
}
