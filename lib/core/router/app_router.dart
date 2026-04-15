import 'package:fleexa/Features/auth/presentation/views/change_password_view.dart';
import 'package:fleexa/Features/auth/presentation/views/reset_password_view.dart';
import 'package:fleexa/Features/auth/presentation/views/verify_code_view.dart';
import 'package:fleexa/Features/devices/sensors/gas/presentation/views/gas_sensor_view.dart';
import 'package:fleexa/Features/devices/sensors/temperature/presentation/views/temperature_sensor_view.dart';
import 'package:fleexa/Features/overview/main_overview_view.dart';
import 'package:fleexa/Features/overview/system_overview/presentation/views/system_overview_view.dart'
    show SystemOverviewView;
import 'package:fleexa/Features/devices/actuators/door_lock/presentation/views/door_lock_control_view.dart';
import 'package:fleexa/Features/devices/actuators/door_lock/presentation/views/door_lock_details_view.dart';
import 'package:fleexa/Features/settings/presentation/views/edit_profile_view.dart';
import 'package:fleexa/Features/settings/presentation/views/settings_account_view.dart';
import 'package:fleexa/Features/settings/presentation/views/settings_notifications_view.dart';
import 'package:fleexa/Features/settings/presentation/views/settings_profile_view.dart';
import 'package:fleexa/Features/settings/presentation/views/settings_view.dart';
import 'package:fleexa/Features/overview/home/presentation/views/home_view.dart';
import 'package:fleexa/Features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';
import 'package:fleexa/Features/auth/presentation/views/sign_in_view.dart';
import 'package:fleexa/Features/auth/presentation/views/sign_up_view.dart';

import '../../Features/devices/actuators/ac/presentation/views/ac_control_view.dart';
import '../../Features/devices/actuators/ac/presentation/views/ac_details_view.dart';
import '../../Features/devices/sensors/light/views/light_sensor_view.dart';
import '../../Features/overview/notifications/views/notifications_view.dart';

class AppRouter {
  // Route names
  // authentication
  static const String splash = 'splash';
  static const String signIn = 'signIn';
  static const String signUp = 'signUp';
  // password management
  static const String changePassword = 'changePassword';
  static const String resetPassword = 'resetPassword';
  static const String verifyCode = 'verifyCode';
  // settings
  static const String settings = 'settings';
  static const String settingsProfile = 'settingsProfile';
  static const String editProfile = 'editProfile';
  static const String settingsAccount = 'settingsAccount';
  static const String settingsNotifications = 'settingsNotifications';
  // overview
  static const String mainOverview = 'mainOverview';
  static const String systemOverview = 'systemOverview';
  static const String home = 'home';
  // devices
  static const String doorLockControl = 'doorLockControl';
  static const String doorLockDetails = 'doorLockDetails';
  static const String acControl = 'acControl';
  static const String acDetails = 'acDetails';
  static const String temperatureSensor = 'temperatureSensor';
  static const String notifications = 'notifications';
  static const String gasSensor = 'gasSensor';
  static const String lightSensor = 'lightSensor';

  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: splash,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: '/main-overview',
        name: mainOverview,
        builder: (context, state) => const MainOverviewView(),
      ),
      GoRoute(
        path: '/sign-in',
        name: signIn,
        builder: (context, state) => const SignInView(),
      ),
      GoRoute(
        path: '/sign-up',
        name: signUp,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: '/change-password',
        name: changePassword,
        builder: (context, state) => const ChangePasswordView(),
      ),
      GoRoute(
        path: '/reset-password',
        name: resetPassword,
        builder: (context, state) => const ResetPasswordView(),
      ),
      GoRoute(
        path: '/verify-code',
        name: verifyCode,
        builder: (context, state) => const VerifyCodeView(),
      ),
      GoRoute(
        path: '/settings',
        name: settings,
        builder: (context, state) => const SettingsView(),
      ),
      GoRoute(
        path: '/settings-profile',
        name: settingsProfile,
        builder: (context, state) => const SettingsProfileView(),
      ),
      GoRoute(
        path: '/settings-notifications',
        name: settingsNotifications,
        builder: (context, state) => const SettingsNotificationsView(),
      ),
      GoRoute(
        path: '/edit-profile',
        name: editProfile,
        builder: (context, state) => const EditProfileView(),
      ),
      GoRoute(
        path: '/settings-account',
        name: settingsAccount,
        builder: (context, state) => const SettingsAccountView(),
      ),
      GoRoute(
        path: '/home',
        name: home,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: '/system-overview',
        name: systemOverview,
        builder: (context, state) => const SystemOverviewView(),
      ),
      GoRoute(
        path: '/door-lock-control',
        name: doorLockControl,
        builder: (context, state) => const DoorLockControlView(),
      ),
      GoRoute(
        path: '/door-lock-details',
        name: doorLockDetails,
        builder: (context, state) => const DoorLockDetailsView(),
      ),
      GoRoute(
        path: '/ac-control',
        name: acControl,
        builder: (context, state) => const AcControlView(),
      ),
      GoRoute(
        path: '/ac-details',
        name: acDetails,
        builder: (context, state) => const AcDetailsView(),
      ),
      GoRoute(
        path: '/temperature-sensor',
        name: temperatureSensor,
        builder: (context, state) => const TemperatureSensorView(),
      ),
      GoRoute(
        path: '/notifications',
        name: notifications,
        builder: (context, state) => const NotificationsView(),
      ),
      GoRoute(
        path: '/gas-sensor',
        name: gasSensor,
        builder: (context, state) => const GasSensorView(),
      ),
      GoRoute(
        path: '/light-sensor',
        name: lightSensor,
        builder: (context, state) => const LightSensorView(),
      ),
    ],
  );
}
