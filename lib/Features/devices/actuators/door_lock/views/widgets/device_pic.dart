// ignore_for_file: deprecated_member_use

import 'dart:ui';

import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DevicePic extends StatelessWidget {
  const DevicePic({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 300,
      child: Stack(
        alignment: Alignment.center,
        children: [
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 60, sigmaY: 60),
            child: Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                color: AppColors.darkBurgundy,
                shape: BoxShape.circle,
              ),
            ),
          ),
          SvgPicture.asset(
            'assets/images/door_lock_device.svg',
            width: 124,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
