import 'package:fleexa/Features/auth/presentation/views/widgets/account_action_text.dart';
import 'package:fleexa/Features/auth/presentation/views/widgets/agree_terms_text.dart';
import 'package:fleexa/Features/auth/presentation/views/widgets/custom_button.dart';
import 'package:fleexa/Features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:fleexa/Features/auth/presentation/views/widgets/or_divider.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
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
        title: const Text('Sign Up'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 20),
                      const Text(
                        'Create new account to get Started',
                        style: Styles.style14Medium,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 40),
                      CustomTextFormField(
                        prefixIcon: Icons.person_outline,
                        hintText: 'Username',
                      ),
                      const SizedBox(height: 24),
                      CustomTextFormField(
                        prefixIcon: Icons.email_outlined,
                        hintText: 'Email Address',
                      ),
                      const SizedBox(height: 24),
                      CustomTextFormField(
                        prefixIcon: Icons.lock_outline,
                        hintText: 'Password',
                        obscureText: true,
                      ),
                      const SizedBox(height: 24),
                      CustomTextFormField(
                        prefixIcon: Icons.lock_outline,
                        hintText: 'Password',
                        obscureText: true,
                      ),
                      const SizedBox(height: 12),
                      AgreeTermsWidget(),
                    ],
                  ),
                ),
              ),
              // Bottom section (stays fixed, not scrollable)
              CustomButton(text: "Sign Up", onPressed: () {}),
              const SizedBox(height: 32),
              OrDivider(),
              const SizedBox(height: 32),
              AccountActionText(
                normalText: "Already have an account? ",
                actionText: "Sign In",
                onTap: () {},
              ),
              const SizedBox(height: 16), // bottom padding
            ],
          ),
        ),
      ),
    );
  }
}
