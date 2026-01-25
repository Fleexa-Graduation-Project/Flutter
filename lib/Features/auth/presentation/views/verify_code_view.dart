import 'package:fleexa/Features/auth/presentation/views/widgets/account_action_text.dart';
import 'package:fleexa/Features/auth/presentation/views/widgets/custom_button.dart';
import 'package:fleexa/Features/auth/presentation/views/widgets/custom_otp_text_field.dart';
import 'package:fleexa/core/router/app_router.dart';
import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class VerifyCodeView extends StatelessWidget {
  const VerifyCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  children: [
                    const SizedBox(height: 32),
                    Text(
                      S.of(context).verifyCode,
                      style: Styles.style28Medium,
                    ),
                    const SizedBox(height: 12),
                    Text.rich(
                      TextSpan(
                        text: S.of(context).pleaseEnterTheOTP(""),
                        style: Styles.style14Regular,
                        children: [
                          TextSpan(
                            text: "example@gmail.com",
                            style: Styles.style14Regular.copyWith(
                              color: AppColors.burgundy,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 52),
                    CustomOtpTextField(),
                    const SizedBox(height: 28),
                    AccountActionText(
                      normalText: S.of(context).didntReceiveOTP,
                      actionText: S.of(context).resendOTP,
                      onTap: () {
                        context.goNamed(AppRouter.resetPassword);
                      },
                    ),
                    const Spacer(),
                    CustomButton(
                        text: S.of(context).verifyCode, onPressed: () {}),
                    const SizedBox(height: 80),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
