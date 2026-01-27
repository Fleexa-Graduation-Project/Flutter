import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icons/notification.svg',
            width: 24,
            height: 24,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(width: 8),
        InkWell(
          onTap: () {},
          child: CircleAvatar(
            radius: 16.r,
            backgroundImage: AssetImage('assets/images/girl.png'),
          ),
        )
      ],
    );
  }
}
