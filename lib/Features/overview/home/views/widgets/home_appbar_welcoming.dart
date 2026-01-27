import 'package:flutter/material.dart';

import '../../../../../core/utils/constants/app_colors.dart';
import '../../../../../core/utils/constants/styles.dart';
import '../../../../../generated/l10n.dart';

class HomeAppbarWelcoming extends StatelessWidget {
  const HomeAppbarWelcoming({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: S.of(context).homeHello,
            style: Styles.style20SemiBold,
            children: [
              TextSpan(
                text: ' Jana!',
                style: Styles.style20SemiBold.copyWith(
                  color: AppColors.burgundy,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 4),
        Text(
          S.of(context).homeWelcome,
          style: Styles.style16Regular,
        ),
      ],
    );
  }
}
