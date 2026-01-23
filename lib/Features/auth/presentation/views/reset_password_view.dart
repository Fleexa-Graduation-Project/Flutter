import 'package:fleexa/Features/auth/presentation/views/widgets/custom_button.dart';
import 'package:fleexa/Features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';

class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({super.key});
  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _currentPasswordController =
      TextEditingController();

  @override
  void dispose() {
    _currentPasswordController.dispose();
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
        title: Text(S.of(context).resetPassword),
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
                      const SizedBox(height: 32),
                      Text(
                        S.of(context).enterYourEmail,
                        style: Styles.style14Medium.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                      const SizedBox(height: 18),
                      CustomTextFormField(
                        controller: _currentPasswordController,
                        prefixIcon: Icons.lock_outline,
                        hintText: S.of(context).currentPassword,
                        obscureText: true,
                      ),
                      const Spacer(),
                      CustomButton(
                        text: S.of(context).sendOTP,
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
