import 'package:fleexa/core/router/app_router.dart';
import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:go_router/go_router.dart';

class DoorLockAppbar extends StatelessWidget implements PreferredSizeWidget {
  const DoorLockAppbar({super.key, this.showActionButton = true});

  final bool showActionButton;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        S.of(context).doorLock,
        style: Styles.style20Medium,
      ),
      centerTitle: true,
      leading: IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: AppColors.white,
        ),
      ),
      actions: [
        if (showActionButton)
          IconButton(
            onPressed: () {
              GoRouter.of(context).pushNamed(AppRouter.doorLockDetails);
            },
            icon: SvgPicture.asset('assets/icons/details_page.svg'),
          ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
