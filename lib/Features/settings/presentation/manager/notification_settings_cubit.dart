import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../core/services/push_notification_service.dart';
import '../../../../core/utils/constants/app_strings.dart';
import 'notification_settings_state.dart';

class NotificationSettingsCubit extends Cubit<NotificationSettingsState> {
  final PushNotificationService _notificationService =
      PushNotificationService();
  NotificationSettingsCubit() : super(NotificationSettingsState());

  // 1. load Settings from SharedPreferences when the cubit is initialized
  Future<void> loadSettings() async {
    final prefs = await SharedPreferences.getInstance();
    emit(state.copyWith(
      isPushEnabled: prefs.getBool('isPushEnabled') ?? true,
      criticalAlerts: prefs.getBool('criticalAlerts') ?? true,
      warningAlerts: prefs.getBool('warningAlerts') ?? true,
    ));
    await syncSubscriptions(AppConstants.notificationDevices);
  }

  // 2. sync subscriptions with firebase
  Future<void> syncSubscriptions(List<String> userDeviceIds) async {
    log("🔄 Starting syncSubscriptions for ${userDeviceIds.length} devices...");
    for (String deviceId in userDeviceIds) {
      log("Trying to sync device: $deviceId");
      // critical channel
      if (state.isPushEnabled && state.criticalAlerts) {
        await _notificationService.subscribeToTopic('${deviceId}_CRITICAL');
      } else {
        await _notificationService.unsubscribeFromTopic('${deviceId}_CRITICAL');
      }

      // warning channel
      if (state.isPushEnabled && state.warningAlerts) {
        await _notificationService.subscribeToTopic('${deviceId}_WARNING');
      } else {
        await _notificationService.unsubscribeFromTopic('${deviceId}_WARNING');
      }
    }
  }

  // 3. toggle Master Push Notifications
  Future<void> togglePushNotifications(
      bool value, List<String> userDeviceIds) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isPushEnabled', value);
    emit(state.copyWith(isPushEnabled: value));

    await syncSubscriptions(userDeviceIds);
  }

  // 3. toggle Critical Alerts
  Future<void> toggleCriticalAlerts(
      bool value, List<String> userDeviceIds) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('criticalAlerts', value);
    emit(state.copyWith(criticalAlerts: value));

    await syncSubscriptions(userDeviceIds);
  }

  // 4. toggle Warning Alerts
  Future<void> toggleWarningAlerts(
      bool value, List<String> userDeviceIds) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('warningAlerts', value);
    emit(state.copyWith(warningAlerts: value));

    await syncSubscriptions(userDeviceIds);
  }
}
