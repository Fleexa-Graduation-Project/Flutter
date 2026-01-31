import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    super.key,
    required this.title,
    this.detailsPage,
    this.showBackButton = true,
    this.infoButton = false,
  });

  final String? detailsPage;
  final String title;
  final bool showBackButton;
  final bool infoButton;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: Styles.style20Medium,
      ),
      centerTitle: true,
      leading: showBackButton
          ? IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: AppColors.white,
              ),
            )
          : null,
      actions: [
        if (detailsPage != null)
          IconButton(
            onPressed: () {
              GoRouter.of(context).pushNamed(detailsPage!);
            },
            icon: SvgPicture.asset('assets/icons/details_page.svg'),
          ),
        if (infoButton)
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/info.svg',
              width: 24,
            ),
          ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
