import 'dart:developer';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import '../utils/constants/app_colors.dart';

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  log("Background message received: ${message.notification?.title}");
}

class PushNotificationService {
  final _fcm = FirebaseMessaging.instance;
  final FlutterLocalNotificationsPlugin _localNotifications =
      FlutterLocalNotificationsPlugin();

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

    // 2. Extract the FCM Token (this is what we need to send notifications)
    try {
      String? token = await _fcm.getToken();
      log('FCM Token: $token');
    } catch (e) {
      log('Error getting token: $e');
    }
    // TODO: The code to send this token to our API will be written here later

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
