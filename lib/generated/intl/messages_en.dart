// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(startTemp, stopTemp) =>
      "AC starts at ${startTemp}°, stops at ${stopTemp}°";

  static String m1(temp) => "Current Temp ${temp}°";

  static String m2(duration) =>
      "The door has been open for ${duration} minutes";

  static String m3(time, dayNight) => "End: ${time} ${dayNight}";

  static String m4(email) => "Please enter the OTP sent to your email ${email}";

  static String m5(time, dayNight) => "Start: ${time} ${dayNight}";

  static String m6(count) => "${count} hour ago";

  static String m7(count) => "${count} min ago";

  static String m8(count) => "${count} sec ago";

  static String m9(count) => "${count} hour";

  static String m10(count) => "${count} min";

  static String m11(count) => "${count} sec";

  static String m12(options) => "${options} H";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "AirConditionerUsage": MessageLookupByLibrary.simpleMessage(
      "Air Conditioner Usage",
    ),
    "CreateNewPassword": MessageLookupByLibrary.simpleMessage(
      "Create New Password",
    ),
    "NewPassword": MessageLookupByLibrary.simpleMessage("New Password"),
    "SettingsCriticalAlerts": MessageLookupByLibrary.simpleMessage(
      "Critical Alerts",
    ),
    "Threshold": MessageLookupByLibrary.simpleMessage("Threshold"),
    "ThresholdDescription": m0,
    "ac": MessageLookupByLibrary.simpleMessage("AC"),
    "acValue": MessageLookupByLibrary.simpleMessage("20°C"),
    "activeHours": MessageLookupByLibrary.simpleMessage("Active Hours"),
    "agreeWith": MessageLookupByLibrary.simpleMessage("Agree with "),
    "airConditioner": MessageLookupByLibrary.simpleMessage("Air Conditioner"),
    "alertDoorLeftOpen": MessageLookupByLibrary.simpleMessage("Door Left Open"),
    "authCreateAccountSubtitle": MessageLookupByLibrary.simpleMessage(
      "Create new account to get Started",
    ),
    "authForgotPassword": MessageLookupByLibrary.simpleMessage(
      "Forgot Password?",
    ),
    "authHaveAccountQuestion": MessageLookupByLibrary.simpleMessage(
      "Already Have an Account?",
    ),
    "authNoAccountQuestion": MessageLookupByLibrary.simpleMessage(
      "Don\'t Have an Account ?",
    ),
    "authOr": MessageLookupByLibrary.simpleMessage("or"),
    "authSignInTitle": MessageLookupByLibrary.simpleMessage("Sign In"),
    "authSignUpTitle": MessageLookupByLibrary.simpleMessage("Sign Up"),
    "authWelcomeBack": MessageLookupByLibrary.simpleMessage(
      "Welcome back, you\'ve been missed",
    ),
    "autoMode": MessageLookupByLibrary.simpleMessage("Auto Mode"),
    "automaticMode": MessageLookupByLibrary.simpleMessage("Automatic Mode"),
    "avergeBrightness": MessageLookupByLibrary.simpleMessage("Avg Brightness"),
    "avergeBrightnessValue": MessageLookupByLibrary.simpleMessage("15%"),
    "avgUnlockDuration": MessageLookupByLibrary.simpleMessage(
      "Average Unlock Duration",
    ),
    "confirmNewPassword": MessageLookupByLibrary.simpleMessage(
      "Confirm New Password",
    ),
    "controlType": MessageLookupByLibrary.simpleMessage("Control Type"),
    "currentPassword": MessageLookupByLibrary.simpleMessage("Current Password"),
    "currentStatus": MessageLookupByLibrary.simpleMessage("Current Status"),
    "currentTemp": m1,
    "currentTemperature": MessageLookupByLibrary.simpleMessage("Current Temp"),
    "dayFri": MessageLookupByLibrary.simpleMessage("Fri"),
    "dayMon": MessageLookupByLibrary.simpleMessage("Mon"),
    "daySat": MessageLookupByLibrary.simpleMessage("Sat"),
    "daySun": MessageLookupByLibrary.simpleMessage("Sun"),
    "dayThu": MessageLookupByLibrary.simpleMessage("Thu"),
    "dayTue": MessageLookupByLibrary.simpleMessage("Tue"),
    "dayWed": MessageLookupByLibrary.simpleMessage("Wed"),
    "deviceStatus": MessageLookupByLibrary.simpleMessage("Device Status"),
    "didntReceiveOTP": MessageLookupByLibrary.simpleMessage(
      "Didn\'t receive an OTP?",
    ),
    "doorLock": MessageLookupByLibrary.simpleMessage("Door Lock"),
    "doorLockedStatus": MessageLookupByLibrary.simpleMessage("Door is Locked"),
    "doorOpenTooLong": m2,
    "doorUnlockedStatus": MessageLookupByLibrary.simpleMessage(
      "Door is Unlocked",
    ),
    "doorvalue": MessageLookupByLibrary.simpleMessage("24 mins"),
    "editProfile": MessageLookupByLibrary.simpleMessage("Edit Profile"),
    "ends": m3,
    "enterYourEmail": MessageLookupByLibrary.simpleMessage(
      "Enter your email address to recover your password",
    ),
    "fieldConfirmPassword": MessageLookupByLibrary.simpleMessage(
      "Confirm Password",
    ),
    "fieldEmail": MessageLookupByLibrary.simpleMessage("Email Address"),
    "fieldPassword": MessageLookupByLibrary.simpleMessage("Password"),
    "fieldUsername": MessageLookupByLibrary.simpleMessage("Username"),
    "filterFiveDays": MessageLookupByLibrary.simpleMessage("Last 5 Days"),
    "filterLast24h": MessageLookupByLibrary.simpleMessage("Last 24 Hours"),
    "filterLastMonth": MessageLookupByLibrary.simpleMessage("Last Month"),
    "filterLastWeek": MessageLookupByLibrary.simpleMessage("Last Week"),
    "gasLevel": MessageLookupByLibrary.simpleMessage("Gas Level"),
    "gasLevelExceeded": MessageLookupByLibrary.simpleMessage(
      "Gas level has exceeded the safe limit",
    ),
    "gasLevelValue": MessageLookupByLibrary.simpleMessage("820"),
    "gasSensor": MessageLookupByLibrary.simpleMessage("Gas Sensor"),
    "gasSpikeDetected": MessageLookupByLibrary.simpleMessage(
      "Gas spike detected",
    ),
    "gasStatus": MessageLookupByLibrary.simpleMessage("Gas Status"),
    "homeActuators": MessageLookupByLibrary.simpleMessage("Actuators"),
    "homeAllDevices": MessageLookupByLibrary.simpleMessage("All Devices"),
    "homeHello": MessageLookupByLibrary.simpleMessage("Hello,"),
    "homeMyDevices": MessageLookupByLibrary.simpleMessage("My Devices"),
    "homeNotifications": MessageLookupByLibrary.simpleMessage("Notifications"),
    "homeSensors": MessageLookupByLibrary.simpleMessage("Sensors"),
    "homeWelcome": MessageLookupByLibrary.simpleMessage("Welcome Home"),
    "isRequired": MessageLookupByLibrary.simpleMessage("is required"),
    "labelAlertsAndWarnings": MessageLookupByLibrary.simpleMessage(
      "Alerts & Warnings",
    ),
    "labelDevicesOnline": MessageLookupByLibrary.simpleMessage(
      "Devices Online",
    ),
    "labelEnergyConsumption": MessageLookupByLibrary.simpleMessage(
      "Energy Consumption",
    ),
    "labelInsights": MessageLookupByLibrary.simpleMessage("Insights"),
    "labelRelatedDevices": MessageLookupByLibrary.simpleMessage(
      "Related Devices",
    ),
    "labelSummaries": MessageLookupByLibrary.simpleMessage("Summaries"),
    "labelSystemStatus": MessageLookupByLibrary.simpleMessage("System Status"),
    "languageArabic": MessageLookupByLibrary.simpleMessage("Arabic"),
    "languageEnglish": MessageLookupByLibrary.simpleMessage("English"),
    "lastActivity": MessageLookupByLibrary.simpleMessage("Last Activity"),
    "lastUpdateValue": MessageLookupByLibrary.simpleMessage("2 sec ago"),
    "latUpdate": MessageLookupByLibrary.simpleMessage("Last Update"),
    "lightLevelOverTime": MessageLookupByLibrary.simpleMessage(
      "Light Level Over Time",
    ),
    "lightSensor": MessageLookupByLibrary.simpleMessage("Light Sensor"),
    "lightstatus": MessageLookupByLibrary.simpleMessage("Light Status"),
    "manualMode": MessageLookupByLibrary.simpleMessage("Manual Mode"),
    "mode": MessageLookupByLibrary.simpleMessage("Mode"),
    "modeAirwave": MessageLookupByLibrary.simpleMessage("Airwave"),
    "modeCooling": MessageLookupByLibrary.simpleMessage("Cooling"),
    "modeDry": MessageLookupByLibrary.simpleMessage("Dry"),
    "modeHeating": MessageLookupByLibrary.simpleMessage("Heating"),
    "pleaseEnterTheOTP": m4,
    "recentActivities": MessageLookupByLibrary.simpleMessage(
      "Recent Activities",
    ),
    "resendOTP": MessageLookupByLibrary.simpleMessage("Resend OTP"),
    "resetPassword": MessageLookupByLibrary.simpleMessage("Reset Password"),
    "running": MessageLookupByLibrary.simpleMessage("Running"),
    "saveChanges": MessageLookupByLibrary.simpleMessage("Save Changes"),
    "sendOTP": MessageLookupByLibrary.simpleMessage("Send OTP"),
    "settingsAboutAndSupport": MessageLookupByLibrary.simpleMessage(
      "About & Support",
    ),
    "settingsAccountAndSecurity": MessageLookupByLibrary.simpleMessage(
      "Account & Security",
    ),
    "settingsChangePassword": MessageLookupByLibrary.simpleMessage(
      "Change Password",
    ),
    "settingsCriticalAlertsDescription": MessageLookupByLibrary.simpleMessage(
      "Receive alerts for critical system events",
    ),
    "settingsDeleteAccount": MessageLookupByLibrary.simpleMessage(
      "Delete Account",
    ),
    "settingsInfoLogs": MessageLookupByLibrary.simpleMessage("Info Logs"),
    "settingsInfoLogsDescription": MessageLookupByLibrary.simpleMessage(
      "Receive informational logs and updates",
    ),
    "settingsLanguage": MessageLookupByLibrary.simpleMessage("Language"),
    "settingsLogOut": MessageLookupByLibrary.simpleMessage("Log Out"),
    "settingsNotificationsAndAlerts": MessageLookupByLibrary.simpleMessage(
      "Notifications & Alerts",
    ),
    "settingsProfile": MessageLookupByLibrary.simpleMessage("Profile"),
    "settingsPushNotifications": MessageLookupByLibrary.simpleMessage(
      "Push Notifications",
    ),
    "settingsThemeMode": MessageLookupByLibrary.simpleMessage("Theme Mode"),
    "settingsTitle": MessageLookupByLibrary.simpleMessage("Settings"),
    "settingsVersion": MessageLookupByLibrary.simpleMessage("Version"),
    "settingsWarningAlerts": MessageLookupByLibrary.simpleMessage(
      "Warning Alerts",
    ),
    "settingsWarningAlertsDescription": MessageLookupByLibrary.simpleMessage(
      "Receive alerts for warning-level events",
    ),
    "smartRules": MessageLookupByLibrary.simpleMessage("Smart Rules"),
    "stability": MessageLookupByLibrary.simpleMessage("stability"),
    "stable": MessageLookupByLibrary.simpleMessage("stable"),
    "starts": m5,
    "statusAboveHigh": MessageLookupByLibrary.simpleMessage("Above High"),
    "statusAboveNormal": MessageLookupByLibrary.simpleMessage("Above Normal"),
    "statusBright": MessageLookupByLibrary.simpleMessage("Bright"),
    "statusClosed": MessageLookupByLibrary.simpleMessage("Closed"),
    "statusConnected": MessageLookupByLibrary.simpleMessage("Connected"),
    "statusCritical": MessageLookupByLibrary.simpleMessage("Critical"),
    "statusDark": MessageLookupByLibrary.simpleMessage("Dark"),
    "statusDisconnected": MessageLookupByLibrary.simpleMessage("Disconnected"),
    "statusHigh": MessageLookupByLibrary.simpleMessage("High"),
    "statusLow": MessageLookupByLibrary.simpleMessage("Low"),
    "statusNormal": MessageLookupByLibrary.simpleMessage("Normal"),
    "statusOff": MessageLookupByLibrary.simpleMessage("OFF"),
    "statusOn": MessageLookupByLibrary.simpleMessage("ON"),
    "statusOpened": MessageLookupByLibrary.simpleMessage("Opened"),
    "statusWarning": MessageLookupByLibrary.simpleMessage("Warning"),
    "statuscapitalcritical": MessageLookupByLibrary.simpleMessage("CRITICAL"),
    "systemOverview": MessageLookupByLibrary.simpleMessage("System Overview"),
    "target": MessageLookupByLibrary.simpleMessage("Target"),
    "tempAverage": MessageLookupByLibrary.simpleMessage("Average"),
    "tempAvg": MessageLookupByLibrary.simpleMessage("Avg"),
    "tempInside": MessageLookupByLibrary.simpleMessage("Inside"),
    "tempMax": MessageLookupByLibrary.simpleMessage("Max"),
    "tempMin": MessageLookupByLibrary.simpleMessage("Min"),
    "tempOutside": MessageLookupByLibrary.simpleMessage("Outside"),
    "tempPerformance": MessageLookupByLibrary.simpleMessage("Temp Performance"),
    "temperature": MessageLookupByLibrary.simpleMessage("Temperature"),
    "temperatureSensor": MessageLookupByLibrary.simpleMessage(
      "Temperature Sensor",
    ),
    "temperatureStatus": MessageLookupByLibrary.simpleMessage("Temp Status"),
    "termsAndConditions": MessageLookupByLibrary.simpleMessage(
      "Terms & Conditions",
    ),
    "themeModeDark": MessageLookupByLibrary.simpleMessage("Dark"),
    "themeModeLight": MessageLookupByLibrary.simpleMessage("Light"),
    "themeModeSystem": MessageLookupByLibrary.simpleMessage("System"),
    "timeAgoHour": m6,
    "timeAgoMin": m7,
    "timeAgoSec": m8,
    "timeHour": m9,
    "timeMin": m10,
    "timeSec": m11,
    "timer": MessageLookupByLibrary.simpleMessage("Timer"),
    "timerOptions": m12,
    "unitCelsiusText": MessageLookupByLibrary.simpleMessage("Celsius"),
    "unitLuxText": MessageLookupByLibrary.simpleMessage("Lux"),
    "unitPpmText": MessageLookupByLibrary.simpleMessage("PPM"),
    "unlockDuration": MessageLookupByLibrary.simpleMessage("Unlock Duration"),
    "verifyAndContinue": MessageLookupByLibrary.simpleMessage(
      "Verify & Continue",
    ),
    "verifyCode": MessageLookupByLibrary.simpleMessage("Verify Code"),
  };
}
