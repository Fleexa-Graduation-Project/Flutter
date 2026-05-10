import 'package:fleexa/Features/settings/data/models/support_data.dart';
import 'package:fleexa/Features/settings/data/models/support_topic.dart';
import 'package:fleexa/Features/settings/presentation/views/support_detail_view.dart';
import 'package:fleexa/Features/settings/presentation/views/widgets/about_support_action_card.dart';
import 'package:fleexa/Features/settings/presentation/views/widgets/about_support_app_card.dart';
import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class AboutAndSupportView extends StatelessWidget {
  const AboutAndSupportView({super.key});

  void _openDetailsPage(BuildContext context, SupportTopic topic) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => SupportDetailView(topic: topic),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: AppColors.white),
          onPressed: () => GoRouter.of(context).pop(),
        ),
        title: Text('About & Support', style: Styles.style20Medium),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AboutSupportAppCard(),
                const SizedBox(height: 32),
                Text('How can we help?', style: Styles.style20SemiBold),
                const SizedBox(height: 24),
                AboutSupportActionCard(
                  title: 'Privacy Policy',
                  icon: Icons.privacy_tip_outlined,
                  onTap: () => _openDetailsPage(context, SupportData.privacyPolicy),
                ),
                const SizedBox(height: 16),
                AboutSupportActionCard(
                  title: 'Contact Support',
                  subtitle: 'support@fleexa.app',
                  icon: Icons.support_agent_rounded,
                  onTap: () => _openDetailsPage(context, SupportData.contactSupport),
                ),
                const SizedBox(height: 16),
                AboutSupportActionCard(
                  title: 'Report a Problem',
                  icon: Icons.bug_report_outlined,
                  onTap: () => _openDetailsPage(context, SupportData.reportProblem),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}