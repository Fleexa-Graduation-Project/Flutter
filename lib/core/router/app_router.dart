import 'package:fleexa/Features/auth/presentation/views/change_password_view.dart';
import 'package:go_router/go_router.dart';
import 'package:fleexa/Features/auth/presentation/views/sign_in_view.dart';
import 'package:fleexa/Features/auth/presentation/views/sign_up_view.dart';

class AppRouter {
  // Route names
  static const String signInView = '/sign-in';
  static const String signUpView = '/sign-up';
  static const String changePasswordView = '/change-password';

  /// GoRouter instance
  static final GoRouter router = GoRouter(
    initialLocation: signInView,
    routes: [
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
    ],
  );
}
