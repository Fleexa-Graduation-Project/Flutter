import 'package:fleexa/core/router/app_router.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/common_widgets/custom_appbar.dart';
import '../../../../../generated/l10n.dart';

class AcControlView extends StatelessWidget {
  const AcControlView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: S.of(context).airConditioner,
        detailsPage: AppRouter.acDetails,
      ),
      body: const SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              children: [],
            ),
          ),
        ),
      ),
    );
  }
}
