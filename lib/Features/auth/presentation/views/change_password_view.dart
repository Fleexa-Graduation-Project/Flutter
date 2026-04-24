import 'package:fleexa/Features/auth/presentation/views/widgets/custom_button.dart';
import 'package:fleexa/Features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ChangePasswordView extends StatefulWidget {
  const ChangePasswordView({super.key});
  @override
  State<ChangePasswordView> createState() => _ChangePasswordViewState();
}

class _ChangePasswordViewState extends State<ChangePasswordView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _currentPasswordController =
      TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  @override
  void dispose() {
    _currentPasswordController.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => context.pop(),
        ),
        title: Text(S.of(context).settingsChangePassword),
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
                      const SizedBox(height: 80),
                      CustomTextFormField(
                        controller: _currentPasswordController,
                        prefixIcon: Icons.lock_outline,
                        hintText: S.of(context).currentPassword,
                        obscureText: true,
                      ),
                      const SizedBox(height: 24),
                      CustomTextFormField(
                        controller: _newPasswordController,
                        prefixIcon: Icons.lock_outline,
                        hintText: S.of(context).CreateNewPassword,
                        obscureText: true,
                      ),
                      const SizedBox(height: 24),
                      CustomTextFormField(
                        controller: _confirmPasswordController,
                        prefixIcon: Icons.lock_outline,
                        hintText: S.of(context).confirmNewPassword,
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
                      const SizedBox(height: 12),
                      const Spacer(),
                      CustomButton(
                        text: S.of(context).settingsChangePassword,
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {}
                        },
                      ),
                      const SizedBox(height: 80),
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
