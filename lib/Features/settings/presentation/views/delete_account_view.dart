import 'package:fleexa/Features/auth/presentation/views/widgets/custom_button.dart';
import 'package:fleexa/Features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:fleexa/Features/settings/presentation/views/widgets/confirm_dialog.dart';
import 'package:fleexa/core/router/app_router.dart';
import 'package:fleexa/core/utils/common_widgets/app_snackbar.dart';
import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/core/utils/constants/app_strings.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icon_snackbar/flutter_icon_snackbar.dart';
import 'package:go_router/go_router.dart';

class DeleteAccountView extends StatefulWidget {
  const DeleteAccountView({super.key});
  @override
  State<DeleteAccountView> createState() => _DeleteAccountViewState();
}

class _DeleteAccountViewState extends State<DeleteAccountView> {
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
            icon: const Icon(
              Icons.arrow_back_ios,
              color: AppColors.white,
            ),
            onPressed: () => context.pop(),
          ),
          title: Text(S.of(context).deleteAccount),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 40),
                        Text(S.of(context).enterYourPasswordToDelete,
                          style: Styles.style14Medium
                              .copyWith(color: AppColors.coolGray),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        CustomTextFormField(
                          controller: _currentPasswordController,
                          prefixIcon: Icons.lock_outline,
                          hintText: S.of(context).currentPassword,
                          obscureText: true,
                        ),
                        const SizedBox(height: 24),
                        const Spacer(),
                        CustomButton(
                          text: "Delete",
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              showDialog(
                                context: context,
                                builder: (dialogContext) => ConfirmDialog(
                                  dialogType: DialogType.deleteAccount,
                                  onConfirm: () async {
                                    // 1. First, pop the dialog safely
                                    if (dialogContext.canPop()) {
                                      dialogContext.pop();
                                    }

                                    // 2. Perform your API call here (Simulated with a delay)
                                    // Example: bool isDeleted = await authProvider.deleteAccount(_currentPasswordController.text);

                                    // 3. Ensure the screen still exists before showing Snackbars or routing
                                    if (!context.mounted) return;

                                    AppSnackbar.show(
                                      context,
                                      type: SnackBarType.success,
                                      message:
                                          "Your account has been successfully deleted. We're sorry to see you go!",
                                    );

                                    context.goNamed(AppRouter.signIn);
                                  },
                                ),
                              );
                            }
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
        ));
  }
}
