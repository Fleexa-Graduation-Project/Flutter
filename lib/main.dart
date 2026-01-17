import 'package:fleexa/Features/auth/presentation/views/sign_in_view.dart';
import 'package:fleexa/Features/auth/presentation/views/sign_up_view.dart';
import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Fleexa());
}

class Fleexa extends StatelessWidget {
  const Fleexa({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: AppColors.jetBlack,
          titleTextStyle: Styles.style24Medium,
          iconTheme: const IconThemeData(color: AppColors.coolGray),
        ),
        scaffoldBackgroundColor: AppColors.jetBlack,
        primaryColor: AppColors.white,
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const SignUpView(),
    );
  }
}
