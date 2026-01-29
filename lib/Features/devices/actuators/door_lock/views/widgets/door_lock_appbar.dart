import 'package:fleexa/core/router/app_router.dart';
import 'package:fleexa/core/utils/common_widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:go_router/go_router.dart';

class DoorLockAppbar extends StatelessWidget implements PreferredSizeWidget {
  const DoorLockAppbar({super.key, this.showActionButton = true});

  final bool showActionButton;

  @override
  Widget build(BuildContext context) {
    return CustomAppbar(
      title: S.of(context).doorLock,
      actionButton: showActionButton
          ? IconButton(
              onPressed: () {
                GoRouter.of(context).pushNamed(AppRouter.doorLockDetails);
              },
              icon: SvgPicture.asset('assets/icons/details_page.svg'),
            )
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
