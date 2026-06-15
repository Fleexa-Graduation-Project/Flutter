import 'dart:developer';
import '../network/api_constants.dart';
import '../network/api_service.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import '../utils/constants/app_colors.dart';
import '../utils/functions/device_helpers.dart';

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  log("Background message received: ${message.notification?.title}");
}

class PushNotificationService {
  final _fcm = FirebaseMessaging.instance;
  static final FlutterLocalNotificationsPlugin _localNotifications =
      FlutterLocalNotificationsPlugin();

  final APiService apiService;

  PushNotificationService(this.apiService);

  Future<void> init() async {
    const AndroidInitializationSettings androidInitSettings =
        AndroidInitializationSettings('app_icon');

    const DarwinInitializationSettings iosInitSettings =
        DarwinInitializationSettings();

    const InitializationSettings initSettings = InitializationSettings(
      android: androidInitSettings,
      iOS: iosInitSettings,
    );

    await _localNotifications.initialize(settings: initSettings);

    // 1. Asking user for permission to receive notifications.
    try {
      NotificationSettings settings = await _fcm.requestPermission(
        alert: true,
        badge: true,
        sound: true,
      );
      log('User granted permission: ${settings.authorizationStatus}');
    } catch (e) {
      log('Error requesting permission: $e');
    }

    // 2. Extract the FCM Token
    try {
      String? token = await _fcm.getToken();
      log('FCM Token: $token');
    } catch (e) {
      log('Error getting token: $e');
    }

    // 3. Receive notifications when the app is in the foreground

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      log('Message received in Foreground!');
      if (message.notification != null) {
        log('Title: ${message.notification?.title}');

        _showLocalNotification(message);
      }
    });

    // 4. Receive notifications when the app is in the background or terminated
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    // 5. Handle token refresh
    _fcm.onTokenRefresh.listen((newToken) async {
      log("FCM Token refreshed by Firebase: $newToken");
      await _updateTokenOnBackend(newToken);
    });
  }

  // register the new token with the backend
  Future<void> registerDeviceForNotifications() async {
    try {
      final String hardwareId = await DeviceHelpers.getUniqueHardwareId();
      final String? fcmToken = await _fcm.getToken();

      if (fcmToken == null) {
        log("FCM Token is null, cannot register device.");
        return;
      }

      await apiService.put(
        ApiConstants.userPreferences,
        data: {
          'hardware_id': hardwareId,
          'fcm_token': fcmToken,
          'receive_notifications': true,
          'receive_critical': true,
          'receive_warnings': true
        },
      );

      log("Device [$hardwareId] registered for push notifications successfully!");
    } catch (e) {
      log("Failed to register device: $e");
    }
  }

  // unregister the device
  Future<void> unregisterDevice() async {
    try {
      final String hardwareId = await DeviceHelpers.getUniqueHardwareId();

      await apiService.put(
        ApiConstants.userPreferences,
        data: {
          'hardware_id': hardwareId,
          'fcm_token':
              "", // sends empty string to delete this device notifications.
        },
      );

      log("Device [$hardwareId] unregistered successfully!");
    } catch (e) {
      log("Failed to unregister device: $e");
    }
  }

  // update the token on the backend when it changes
  Future<void> _updateTokenOnBackend(String newToken) async {
    try {
      final String hardwareId = await DeviceHelpers.getUniqueHardwareId();
      await apiService.put(
        ApiConstants.userPreferences,
        data: {
          'hardware_id': hardwareId,
          'fcm_token': newToken,
        },
      );
      log("FCM Token updated on backend for device: $hardwareId");
    } catch (e) {
      log("Failed to update token on backend: $e");
    }
  }

  Future<void> updatePreferences({
    required bool isPushEnabled,
    required bool criticalAlerts,
    required bool warningAlerts,
  }) async {
    try {
      final String hardwareId = await DeviceHelpers.getUniqueHardwareId();
      final String? fcmToken = await _fcm.getToken();

      await apiService.put(
        ApiConstants.userPreferences,
        data: {
          'hardware_id': hardwareId,
          'fcm_token': fcmToken ?? "",
          'receive_notifications': isPushEnabled,
          'receive_critical': criticalAlerts,
          'receive_warnings': warningAlerts,
        },
      );
      log("Notification preferences updated successfully on backend!");
    } catch (e) {
      log("Failed to update preferences: $e");
    }
  }

  Future<void> _showLocalNotification(RemoteMessage message) async {
    AndroidNotificationDetails androidDetails =
        const AndroidNotificationDetails(
      'high_importance_channel',
      'High Importance Notifications',
      importance: Importance.max,
      priority: Priority.high,
      playSound: true,
      color: AppColors.jetBlack,
    );

    NotificationDetails platformDetails = NotificationDetails(
      android: androidDetails,
      iOS: const DarwinNotificationDetails(),
    );

    await _localNotifications.show(
      id: message.hashCode,
      title: message.notification?.title,
      body: message.notification?.body,
      notificationDetails: platformDetails,
      payload: message.data.toString(),
    );
  }
}
