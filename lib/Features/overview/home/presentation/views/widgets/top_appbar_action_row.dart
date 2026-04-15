import 'package:fleexa/core/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class TopAppbarActionRow extends StatelessWidget {
  const TopAppbarActionRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/images/letter_logo.svg',
          width: 28,
        ),
        const Spacer(),
        IconButton(
          onPressed: () {
            GoRouter.of(context).pushNamed(AppRouter.notifications);
          },
          icon: SvgPicture.asset(
            'assets/icons/notification.svg',
            width: 24,
            height: 24,
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(width: 8),
        InkWell(
          onTap: () {
            GoRouter.of(context).pushNamed(AppRouter.settingsProfile);
          },
          child: CircleAvatar(
            radius: 16.r,
            backgroundImage: const AssetImage('assets/images/girl.png'),
          ),
        )
      ],
    );
  }
}
