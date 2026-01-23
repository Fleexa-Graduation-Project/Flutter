import 'package:fleexa/Features/auth/presentation/views/widgets/account_action_text.dart';
import 'package:fleexa/Features/auth/presentation/views/widgets/agree_terms_text.dart';
import 'package:fleexa/Features/auth/presentation/views/widgets/custom_button.dart';
import 'package:fleexa/Features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:fleexa/Features/auth/presentation/views/widgets/or_divider.dart';
import 'package:fleexa/core/router/app_router.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(S.of(context).authSignUpTitle),
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
                      S.of(context).authCreateAccountSubtitle,
                      style: Styles.style14Medium,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 40),
                    CustomTextFormField(
                      prefixIcon: Icons.person_outline,
                      hintText: S.of(context).fieldUsername,
                    ),
                    const SizedBox(height: 24),
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
                    const SizedBox(height: 24),
                    CustomTextFormField(
                      prefixIcon: Icons.lock_outline,
                      hintText: S.of(context).fieldConfirmPassword,
                      obscureText: true,
                    ),
                    const SizedBox(height: 12),

                    AgreeTermsWidget(), Spacer(),

                    CustomButton(
                      text: S.of(context).authSignUpTitle,
                      onPressed: () {},
                    ),
                    const SizedBox(height: 32),
                    OrDivider(),
                    const SizedBox(height: 32),
                    AccountActionText(
                      normalText: S.of(context).authHaveAccountQuestion,
                      actionText: S.of(context).authSignInTitle,
                      onTap: () {
                        AppRouter.router.go(AppRouter.signInView);
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
