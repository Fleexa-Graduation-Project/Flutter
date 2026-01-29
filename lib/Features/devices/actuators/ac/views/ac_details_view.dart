import 'package:flutter/material.dart';

import '../../../../../core/utils/common_widgets/custom_appbar.dart';
import '../../../../../generated/l10n.dart';

class AcDetailsView extends StatelessWidget {
  const AcDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: S.of(context).airConditioner,
      ),
      body: const SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsetsGeometry.all(24),
            child: Column(
              children: [],
            ),
          ),
        ),
      ),
    );
  }
}
