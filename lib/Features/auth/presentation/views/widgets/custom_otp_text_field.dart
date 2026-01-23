import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class CustomOtpTextField extends StatelessWidget {
  const CustomOtpTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OtpTextField(
      autoFocus: true,
      numberOfFields: 5,
      enabledBorderColor: AppColors.coolGray,
      focusedBorderColor: AppColors.burgundy,
      showFieldAsBox: true,
      fieldWidth: 50,
      borderRadius: BorderRadius.circular(12),
      textStyle: Styles.style20Medium,
      keyboardType: TextInputType.number,
      onCodeChanged: (String code) {},
      onSubmit: (String verificationCode) {},
    );
  }
}
