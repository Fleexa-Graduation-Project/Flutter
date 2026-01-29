import 'package:fleexa/core/utils/common_widgets/custom_container.dart';
import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/core/utils/constants/assets.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RelatedDeviceCard extends StatelessWidget {
  const RelatedDeviceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).labelRelatedDevices,
          style: Styles.style18Medium,
        ),
        const SizedBox(height: 20),
        CustomContainer(
            child: Row(
          children: [
            SvgPicture.asset(
              AppAssets.iconsAc,
            ),
            const SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  S.of(context).airConditioner,
                  style: Styles.style14Medium.copyWith(color: AppColors.white),
                ),
                const SizedBox(height: 4),
                Text(
                  '${S.of(context).target} ${S.of(context).acValue}',
                  style: Styles.style12Regular
                      .copyWith(color: AppColors.mediumGray),
                ),
              ],
            ),
            const Spacer(),
            const Icon(
              FontAwesomeIcons.angleRight,
              color: AppColors.mediumGray,
            )
          ],
        ))
      ],
    );
  }
}
