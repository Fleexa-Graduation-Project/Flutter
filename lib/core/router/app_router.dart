import 'package:fleexa/Features/auth/presentation/views/change_password_view.dart';
import 'package:fleexa/Features/auth/presentation/views/reset_password_view.dart';
import 'package:fleexa/Features/auth/presentation/views/verify_code_view.dart';
import 'package:fleexa/Features/settings/presentation/views/settings_view.dart';
import 'package:fleexa/Features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';
import 'package:fleexa/Features/auth/presentation/views/sign_in_view.dart';
import 'package:fleexa/Features/auth/presentation/views/sign_up_view.dart';

class AppRouter {
  // Route names
  static const String splashView = '/';
  static const String signInView = '/sign-in';
  static const String signUpView = '/sign-up';
  static const String changePasswordView = '/change-password';
  static const String resetPasswordView = '/reset-password';
  static const String verifyCodeView = '/verify-code';
  static const String settingsView = '/settings';

  /// GoRouter instance
  static final GoRouter router = GoRouter(
    initialLocation: settingsView,
    routes: [
      GoRoute(
        path: splashView,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: signInView,
        builder: (context, state) => const SignInView(),
      ),
      GoRoute(
        path: signUpView,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: changePasswordView,
        builder: (context, state) => const ChangePasswordView(),
      ),
      GoRoute(
        path: resetPasswordView,
        builder: (context, state) => const ResetPasswordView(),
      ),
      GoRoute(
        path: verifyCodeView,
        builder: (context, state) => const VerifyCodeView(),
      ),
      GoRoute(
        path: settingsView,
        builder: (context, state) => SettingsView(),
      ),
    ],
  );
}
