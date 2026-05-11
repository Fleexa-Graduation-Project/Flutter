import 'package:fleexa/core/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../auth/presentation/manager/auth_cubit.dart';
import '../../../auth/presentation/manager/auth_state.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  bool _startAnimation = false;
  double _opacity = 1.0;

  @override
  void initState() {
    super.initState();

    context.read<AuthCubit>().checkAppStart();

    // Remove Native Splash & Start Text Expansion
    Future.delayed(const Duration(milliseconds: 500), () {
      FlutterNativeSplash.remove();
      setState(() {
        _startAnimation = true;
      });
    });

    // Start Fading Out
    Future.delayed(const Duration(milliseconds: 1600), () {
      if (mounted) {
        setState(() {
          _opacity = 0.0; // Fade out content
        });
      }
    });

    // Navigate
    Future.delayed(const Duration(milliseconds: 2200), () {
      if (mounted) {
        // _navigateBasedOnAuthState();
        GoRouter.of(context).pushReplacementNamed(AppRouter.mainOverview);
      }
    });
  }

  void _navigateBasedOnAuthState() {
    final authState = context.read<AuthCubit>().state;

    if (authState is FirstTimeUser) {
      GoRouter.of(context).pushReplacementNamed(AppRouter.onBoarding);
    } else if (authState is Unauthenticated) {
      GoRouter.of(context).pushReplacementNamed(AppRouter.signIn);
    } else if (authState is Authenticated) {
      GoRouter.of(context).pushReplacementNamed(AppRouter.mainOverview);
    } else {
      GoRouter.of(context).pushReplacementNamed(AppRouter.signIn);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: AnimatedOpacity(
            duration: const Duration(milliseconds: 600), // Fade duration
            curve: Curves.easeOut,
            opacity: _opacity,
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
        ),
      ),
    );
  }
}
