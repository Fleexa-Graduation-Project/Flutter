import 'package:fleexa/core/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  bool _startAnimation = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 500), () {
      FlutterNativeSplash.remove();
      setState(() {
        _startAnimation = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 1500), () {
      if (mounted) AppRouter.router.go(AppRouter.signUpView);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            // F Letter
            SvgPicture.asset(
              'assets/images/letter_logo.svg',
              width: 52,
              height: 52,
            ),

            // leexa Logo
            AnimatedContainer(
              duration: const Duration(milliseconds: 800),
              curve: Curves.easeInOut,
              width: _startAnimation ? 105 : 0,
              height: 32,
              child: ClipRRect(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SvgPicture.asset(
                    'assets/images/full_logo.svg',
                    width: 105,
                    height: 32,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
