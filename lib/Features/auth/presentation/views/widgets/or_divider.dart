import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: Container(height: 2, color: AppColors.dimGray)),
        SizedBox(width: 8),
        Text('or', style: Styles.style14Medium),
        SizedBox(width: 8),
        Expanded(child: Container(height: 2, color: AppColors.dimGray)),
      ],
    );
  }
}
