import 'package:el_tooltip/el_tooltip.dart';
import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../generated/l10n.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    super.key,
    required this.title,
    this.detailsPage,
    this.showBackButton = true,
    this.infoButton = false,
    this.readAllButton = false,
    this.onReadAll,
  });

  final String? detailsPage;
  final String title;
  final bool showBackButton;
  final bool infoButton;
  final bool readAllButton;
  final VoidCallback? onReadAll;

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
          ElTooltip(
            content: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: S.of(context).statusGuide,
                    style: Styles.style16Medium,
                  ),
                  TextSpan(
                    text: "${S.of(context).infoStatusSafe} (0 -  299 PPM)\n",
                    style: Styles.style16Medium,
                  ),
                  TextSpan(
                    text:
                        "${S.of(context).infoStatusWarning} (300 -  599 PPM)\n",
                    style: Styles.style16Medium,
                  ),
                  TextSpan(
                    text: "${S.of(context).infoStatusCritical} (600+ PPM)",
                    style: Styles.style16Medium,
                  ),
                ],
              ),
            ),
            color: AppColors.charcoalBlack,
            position: ElTooltipPosition.leftStart,
            showArrow: true,
            showModal: true,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: Container(
              padding: const EdgeInsets.all(16),
              child: SvgPicture.asset(
                'assets/icons/info.svg',
                width: 24,
              ),
            ),
          ),
        if (readAllButton && onReadAll != null)
          Padding(
            padding: const EdgeInsets.only(left: 24, top: 4),
            child: TextButton(
              onPressed: onReadAll,
              child: Text(S.of(context).markAsRead,
                style:
                    Styles.style14Regular.copyWith(color: AppColors.coolGray),
              ),
            ),
          ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
