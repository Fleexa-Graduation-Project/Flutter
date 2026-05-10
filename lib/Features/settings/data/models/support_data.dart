import 'package:flutter/material.dart';
import '../models/support_topic.dart';

class SupportData {
  static final SupportTopic privacyPolicy = SupportTopic(
    title: 'Privacy Policy',
    headerIcon: Icons.shield_outlined,
    description: 'We are committed to ensuring your smart home experience is secure. We only use the information strictly necessary to operate your devices.',
    sections: [
      TopicSection(
        title: 'Data Collection',
        icon: Icons.data_usage,
        summary: 'We collect minimal info needed for the app.',
        points: [
          'Basic profile information (display name and email).',
          'Device telemetry for your smart home dashboard.',
        ],
      ),
      TopicSection(
        title: 'Usage Purpose',
        icon: Icons.visibility_outlined,
        summary: 'Your data provides stable, live features.',
        points: [
          'Display live home status and device insights.',
          'Send warning and critical alerts securely.',
        ],
      ),
      TopicSection(
        title: 'Your Control',
        icon: Icons.person_outline,
        summary: 'You manage your settings and account.',
        points: [
          'Adjust alerts and notifications anytime.',
          'Request complete account deletion securely.',
        ],
      ),
    ],
  );

  static final SupportTopic contactSupport = SupportTopic(
    title: 'Contact Support',
    headerIcon: Icons.headset_mic_outlined,
    description: 'Need assistance with your app or devices? Our dedicated support team is here to help you resolve issues quickly.',
    sections: [
      TopicSection(
        title: 'Email Us',
        icon: Icons.email_outlined,
        summary: 'Reach out directly at support@fleexa.app.',
        points: [
          'Use your registered account email for verification.',
          'Submit one issue per message for faster help.',
        ],
      ),
      TopicSection(
        title: 'What to Include',
        icon: Icons.info_outline,
        summary: 'Provide details to speed up resolution.',
        points: [
          'Mention the specific device or page causing the issue.',
          'Describe what happened versus what you expected.',
        ],
      ),
      TopicSection(
        title: 'Response Times',
        icon: Icons.schedule,
        summary: 'We aim to reply within 24 to 48 hours.',
        points: [
          'Critical security issues are prioritized instantly.',
          'General inquiries are handled during business hours.',
        ],
      ),
    ],
  );

  static final SupportTopic reportProblem = SupportTopic(
    title: 'Report a Problem',
    headerIcon: Icons.build_outlined,
    description: 'Help us improve Fleexa! Providing clear steps allows our engineering team to fix bugs efficiently.',
    sections: [
      TopicSection(
        title: 'Pre-check Steps',
        icon: Icons.wifi_protected_setup,
        summary: 'Verify basics before sending a report.',
        points: [
          'Ensure your internet connection is stable.',
          'Check if your app is updated to the latest version.',
        ],
      ),
      TopicSection(
        title: 'Be Specific',
        icon: Icons.edit_note,
        summary: 'Clear reproduction steps fix bugs faster.',
        points: [
          'Write step-by-step instructions to trigger the bug.',
          'Attach screenshots or screen recordings if possible.',
        ],
      ),
      TopicSection(
        title: 'Urgent Issues',
        icon: Icons.warning_amber_rounded,
        summary: 'Security and hardware drops are high priority.',
        points: [
          'Report missing security alerts immediately.',
          'Report if door locks or AC commands fail to execute.',
        ],
      ),
    ],
  );
}