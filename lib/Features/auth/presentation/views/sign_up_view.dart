import 'package:fleexa/Features/auth/presentation/views/widgets/account_action_text.dart';
import 'package:fleexa/Features/auth/presentation/views/widgets/agree_terms_text.dart';
import 'package:fleexa/Features/auth/presentation/views/widgets/custom_button.dart';
import 'package:fleexa/Features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:fleexa/Features/auth/presentation/views/widgets/or_divider.dart';
import 'package:fleexa/core/router/app_router.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

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
                child: Form(
                  key: _formKey,
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
                        controller: _usernameController,
                        prefixIcon: Icons.person_outline,
                        hintText: S.of(context).fieldUsername,
                      ),
                      const SizedBox(height: 24),
                      CustomTextFormField(
                        controller: _emailController,
                        prefixIcon: Icons.email_outlined,
                        hintText: S.of(context).fieldEmail,
                      ),
                      const SizedBox(height: 24),
                      CustomTextFormField(
                        controller: _passwordController,
                        prefixIcon: Icons.lock_outline,
                        hintText: S.of(context).fieldPassword,
                        obscureText: true,
                      ),
                      const SizedBox(height: 24),
                      CustomTextFormField(
                        controller: _confirmPasswordController,
                        prefixIcon: Icons.lock_outline,
                        hintText: S.of(context).fieldConfirmPassword,
                        obscureText: true,
                      ),
                      const SizedBox(height: 12),

                      const AgreeTermsWidget(),
                      const Spacer(),

                      CustomButton(
                        text: S.of(context).authSignUpTitle,
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {}
                        },
                      ),
                      const SizedBox(height: 32),
                      OrDivider(),
                      const SizedBox(height: 32),
                      AccountActionText(
                        normalText: S.of(context).authHaveAccountQuestion,
                        actionText: S.of(context).authSignInTitle,
                        onTap: () {
                          context.goNamed(AppRouter.signIn);
                        },
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
