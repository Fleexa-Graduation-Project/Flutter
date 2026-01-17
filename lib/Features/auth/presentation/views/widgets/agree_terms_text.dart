import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AgreeTermsWidget extends StatefulWidget {
  final VoidCallback? onTapTerms;

  const AgreeTermsWidget({super.key, this.onTapTerms});

  @override
  State<AgreeTermsWidget> createState() => _AgreeTermsWidgetState();
}

class _AgreeTermsWidgetState extends State<AgreeTermsWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (value) {
            setState(() {
              isChecked = value ?? false;
            });
          },
          activeColor: AppColors.burgundy,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
        const SizedBox(width: 4), // small spacing
        Expanded(
          child: Text.rich(
            TextSpan(
              style: Styles.style14Regular.copyWith(
                color: const Color(0xFF8A8A8A),
              ),
              children: [
                const TextSpan(text: 'Agree with '),
                TextSpan(
                  text: 'Terms & Conditions',
                  style: const TextStyle(
                    color: AppColors.burgundy,
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: TapGestureRecognizer()..onTap = widget.onTapTerms,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
