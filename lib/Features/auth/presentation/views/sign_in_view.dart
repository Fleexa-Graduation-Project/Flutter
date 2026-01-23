import 'package:fleexa/Features/auth/presentation/views/widgets/account_action_text.dart';
import 'package:fleexa/Features/auth/presentation/views/widgets/custom_button.dart';
import 'package:fleexa/Features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:fleexa/Features/auth/presentation/views/widgets/or_divider.dart';
import 'package:fleexa/core/router/app_router.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(S.of(context).authSignInTitle),
        centerTitle: true,
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
                    const SizedBox(height: 20),
                    Text(
                      S.of(context).authWelcomeBack,
                      style: Styles.style14Medium,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 40),
                    CustomTextFormField(
                      prefixIcon: Icons.email_outlined,
                      hintText: S.of(context).fieldEmail,
                    ),
                    const SizedBox(height: 24),
                    CustomTextFormField(
                      prefixIcon: Icons.lock_outline,
                      hintText: S.of(context).fieldPassword,
                      obscureText: true,
                    ),
                    const SizedBox(height: 12),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        S.of(context).authForgotPassword,
                        style: Styles.style14Regular,
                      ),
                    ),
                    Spacer(),
                    // Bottom section (stays fixed, not scrollable)
                    CustomButton(
                      text: S.of(context).authSignInTitle,
                      onPressed: () {},
                    ),
                    const SizedBox(height: 32),
                    OrDivider(),
                    const SizedBox(height: 32),
                    AccountActionText(
                      normalText: S.of(context).authNoAccountQuestion,
                      actionText: S.of(context).authSignUpTitle,
                      onTap: () {
                        AppRouter.router.go(AppRouter.signUpView);
                      },
                    ),
                    const SizedBox(height: 16), // bottom padding
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
