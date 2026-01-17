import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final IconData? prefixIcon;
  final bool obscureText;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;
  final Color borderColor;
  final Color focusedBorderColor;

  const CustomTextFormField({
    super.key,
    this.hintText = '',
    this.controller,
    this.prefixIcon,
    this.obscureText = false,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.borderColor = AppColors.coolGray,
    this.focusedBorderColor = AppColors.white,
  });

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<bool> obscureNotifier = ValueNotifier(obscureText);

    return ValueListenableBuilder<bool>(
      valueListenable: obscureNotifier,
      builder: (context, isObscure, child) {
        return TextFormField(
          cursorColor: AppColors.white,
          style: Styles.style14Medium.copyWith(color: AppColors.white),
          controller: controller,
          obscureText: isObscure,
          validator: validator,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: Styles.style14Regular,
            prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
            prefixIconColor: AppColors.coolGray,
            suffixIcon: obscureText
                ? IconButton(
                    icon: Icon(
                      isObscure
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                      color: AppColors.coolGray,
                    ),
                    onPressed: () => obscureNotifier.value = !isObscure,
                  )
                : null,
            border: _outlineInputBorder(borderColor),
            focusedBorder: _outlineInputBorder(focusedBorderColor),
          ),
        );
      },
    );
  }

  OutlineInputBorder _outlineInputBorder(Color color) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color, width: 1.0),
      borderRadius: const BorderRadius.all(Radius.circular(8.0)),
    );
  }
}
