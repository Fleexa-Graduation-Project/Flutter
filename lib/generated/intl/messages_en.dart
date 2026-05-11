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

  static String m3(email) => "Please enter the OTP sent to your email ${email}";

  static String m4(time, minutes) => "Remaining Time: ${time}h ${minutes}m";

  static String m5(count) => "${count} hour ago";

  static String m6(count) => "${count} min ago";

  static String m7(count) => "${count} sec ago";

  static String m8(count) => "${count} hour";

  static String m9(count) => "${count} min";

  static String m10(count) => "${count} sec";

  static String m11(options) => "${options} H";

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
    "aboutSupport": MessageLookupByLibrary.simpleMessage("About & Support"),
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
    "beSpecific": MessageLookupByLibrary.simpleMessage("Be Specific"),
    "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
    "clearReproductionStepsFixBugs": MessageLookupByLibrary.simpleMessage(
      "Clear reproduction steps fix bugs faster.",
    ),
    "confirmNewPassword": MessageLookupByLibrary.simpleMessage(
      "Confirm New Password",
    ),
    "contactSupport": MessageLookupByLibrary.simpleMessage("Contact Support"),
    "controlType": MessageLookupByLibrary.simpleMessage("Control Type"),
    "currentPassword": MessageLookupByLibrary.simpleMessage("Current Password"),
    "currentStatus": MessageLookupByLibrary.simpleMessage("Current Status"),
    "currentTemp": m1,
    "currentTemperature": MessageLookupByLibrary.simpleMessage("Current Temp"),
    "dataCollection": MessageLookupByLibrary.simpleMessage("Data Collection"),
    "dayFri": MessageLookupByLibrary.simpleMessage("Fri"),
    "dayMon": MessageLookupByLibrary.simpleMessage("Mon"),
    "daySat": MessageLookupByLibrary.simpleMessage("Sat"),
    "daySun": MessageLookupByLibrary.simpleMessage("Sun"),
    "dayThu": MessageLookupByLibrary.simpleMessage("Thu"),
    "dayTue": MessageLookupByLibrary.simpleMessage("Tue"),
    "dayWed": MessageLookupByLibrary.simpleMessage("Wed"),
    "deleteAccount": MessageLookupByLibrary.simpleMessage("Delete Account"),
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
    "emailUs": MessageLookupByLibrary.simpleMessage("Email Us"),
    "ends": MessageLookupByLibrary.simpleMessage("End:"),
    "enterYourEmail": MessageLookupByLibrary.simpleMessage(
      "Enter your email address to recover your password",
    ),
    "enterYourPasswordToDelete": MessageLookupByLibrary.simpleMessage(
      "Enter your password to delete your account ",
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
    "filterYourFleet": MessageLookupByLibrary.simpleMessage(
      "Filter Your Fleet",
    ),
    "fleexa": MessageLookupByLibrary.simpleMessage("Fleexa"),
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
    "getNotifiedImmediatelyWhenThresholds":
        MessageLookupByLibrary.simpleMessage(
          "Get notified immediately when thresholds are met.",
        ),
    "getStarted": MessageLookupByLibrary.simpleMessage("Get Started"),
    "helpUsImproveFleexaProviding": MessageLookupByLibrary.simpleMessage(
      "Help us improve Fleexa! Providing clear steps allows our engineering team to fix bugs efficiently.",
    ),
    "home": MessageLookupByLibrary.simpleMessage("Home"),
    "homeActuators": MessageLookupByLibrary.simpleMessage("Actuators"),
    "homeAllDevices": MessageLookupByLibrary.simpleMessage("All Devices"),
    "homeHello": MessageLookupByLibrary.simpleMessage("Hello,"),
    "homeMyDevices": MessageLookupByLibrary.simpleMessage("My Devices"),
    "homeNotifications": MessageLookupByLibrary.simpleMessage("Notifications"),
    "homeSensors": MessageLookupByLibrary.simpleMessage("Sensors"),
    "homeWelcome": MessageLookupByLibrary.simpleMessage("Welcome Home"),
    "howCanWeHelp": MessageLookupByLibrary.simpleMessage("How can we help?"),
    "infoStatusCritical": MessageLookupByLibrary.simpleMessage("• Critical: "),
    "infoStatusSafe": MessageLookupByLibrary.simpleMessage("• Safe: "),
    "infoStatusWarning": MessageLookupByLibrary.simpleMessage("• Warning: "),
    "instantAlerts": MessageLookupByLibrary.simpleMessage("Instant Alerts"),
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
    "liveDevices": MessageLookupByLibrary.simpleMessage("Live Devices"),
    "manualMode": MessageLookupByLibrary.simpleMessage("Manual Mode"),
    "markAsRead": MessageLookupByLibrary.simpleMessage("Mark as read"),
    "mode": MessageLookupByLibrary.simpleMessage("Mode"),
    "modeCooling": MessageLookupByLibrary.simpleMessage("Cooling"),
    "modeDry": MessageLookupByLibrary.simpleMessage("Dry"),
    "modeFanOnly": MessageLookupByLibrary.simpleMessage("Fan Only"),
    "modeHeating": MessageLookupByLibrary.simpleMessage("Heating"),
    "needAssistanceWithYourApp": MessageLookupByLibrary.simpleMessage(
      "Need assistance with your app or devices? Our dedicated support team is here to help you resolve issues quickly.",
    ),
    "noRecentActivities": MessageLookupByLibrary.simpleMessage(
      "No recent activities.",
    ),
    "pleaseEnterTheOTP": m3,
    "precheckSteps": MessageLookupByLibrary.simpleMessage("Pre-check Steps"),
    "privacyPolicy": MessageLookupByLibrary.simpleMessage("Privacy Policy"),
    "provideDetailsToSpeedUp": MessageLookupByLibrary.simpleMessage(
      "Provide details to speed up resolution.",
    ),
    "reachOutDirectlyAtSupportfleexaapp": MessageLookupByLibrary.simpleMessage(
      "Reach out directly at support@fleexa.app.",
    ),
    "realtimeMonitoring": MessageLookupByLibrary.simpleMessage(
      "Real-time Monitoring",
    ),
    "recentActivities": MessageLookupByLibrary.simpleMessage(
      "Recent Activities",
    ),
    "remainingTime": m4,
    "reportAProblem": MessageLookupByLibrary.simpleMessage("Report a Problem"),
    "resendOTP": MessageLookupByLibrary.simpleMessage("Resend OTP"),
    "resetPassword": MessageLookupByLibrary.simpleMessage("Reset Password"),
    "responseTimes": MessageLookupByLibrary.simpleMessage("Response Times"),
    "runYourIotSimulationWithout": MessageLookupByLibrary.simpleMessage(
      "Run your IoT simulation without a single physical board.",
    ),
    "running": MessageLookupByLibrary.simpleMessage("Running"),
    "saveChanges": MessageLookupByLibrary.simpleMessage("Save Changes"),
    "securityAndHardwareDropsAre": MessageLookupByLibrary.simpleMessage(
      "Security and hardware drops are high priority.",
    ),
    "sendOTP": MessageLookupByLibrary.simpleMessage("Send OTP"),
    "set": MessageLookupByLibrary.simpleMessage("Set"),
    "setCustomTimer": MessageLookupByLibrary.simpleMessage("Set Custom Timer"),
    "setTime": MessageLookupByLibrary.simpleMessage("Set Time"),
    "setTimer": MessageLookupByLibrary.simpleMessage("Set Timer"),
    "settings": MessageLookupByLibrary.simpleMessage("Settings"),
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
    "skip": MessageLookupByLibrary.simpleMessage("Skip"),
    "smartControl": MessageLookupByLibrary.simpleMessage("Smart Control"),
    "smartHomeVersion100": MessageLookupByLibrary.simpleMessage(
      "Smart Home • Version 1.0.0",
    ),
    "smartRules": MessageLookupByLibrary.simpleMessage("Smart Rules"),
    "stability": MessageLookupByLibrary.simpleMessage("stability"),
    "stable": MessageLookupByLibrary.simpleMessage("stable"),
    "starts": MessageLookupByLibrary.simpleMessage("Start:"),
    "statusAboveHigh": MessageLookupByLibrary.simpleMessage("Above High"),
    "statusAboveNormal": MessageLookupByLibrary.simpleMessage("Above Normal"),
    "statusBright": MessageLookupByLibrary.simpleMessage("Bright"),
    "statusClosed": MessageLookupByLibrary.simpleMessage("Closed"),
    "statusConnected": MessageLookupByLibrary.simpleMessage("Connected"),
    "statusCritical": MessageLookupByLibrary.simpleMessage("Critical"),
    "statusDark": MessageLookupByLibrary.simpleMessage("Dark"),
    "statusDisconnected": MessageLookupByLibrary.simpleMessage("Disconnected"),
    "statusGuide": MessageLookupByLibrary.simpleMessage("Status Guide: \n\n"),
    "statusHigh": MessageLookupByLibrary.simpleMessage("High"),
    "statusLow": MessageLookupByLibrary.simpleMessage("Low"),
    "statusNormal": MessageLookupByLibrary.simpleMessage("Normal"),
    "statusOff": MessageLookupByLibrary.simpleMessage("OFF"),
    "statusOn": MessageLookupByLibrary.simpleMessage("ON"),
    "statusOpened": MessageLookupByLibrary.simpleMessage("Opened"),
    "statusSafe": MessageLookupByLibrary.simpleMessage("Safe"),
    "statusWarning": MessageLookupByLibrary.simpleMessage("Warning"),
    "statuscapitalcritical": MessageLookupByLibrary.simpleMessage("CRITICAL"),
    "supportfleexaapp": MessageLookupByLibrary.simpleMessage(
      "support@fleexa.app",
    ),
    "system": MessageLookupByLibrary.simpleMessage("System"),
    "systemAnalytics": MessageLookupByLibrary.simpleMessage("System Analytics"),
    "systemNotifications": MessageLookupByLibrary.simpleMessage(
      "System Notifications",
    ),
    "systemOverview": MessageLookupByLibrary.simpleMessage("System Overview"),
    "target": MessageLookupByLibrary.simpleMessage("Target"),
    "tempAverage": MessageLookupByLibrary.simpleMessage("Average"),
    "tempAvg": MessageLookupByLibrary.simpleMessage("Avg"),
    "tempInside": MessageLookupByLibrary.simpleMessage("Inside"),
    "tempMax": MessageLookupByLibrary.simpleMessage("Max"),
    "tempMin": MessageLookupByLibrary.simpleMessage("Min"),
    "tempOutside": MessageLookupByLibrary.simpleMessage("Outside"),
    "tempPerformance": MessageLookupByLibrary.simpleMessage("Temp Performance"),
    "tempSensor": MessageLookupByLibrary.simpleMessage("Temp Sensor"),
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
    "timeAgoHour": m5,
    "timeAgoMin": m6,
    "timeAgoSec": m7,
    "timeHour": m8,
    "timeMin": m9,
    "timeSec": m10,
    "timer": MessageLookupByLibrary.simpleMessage("Timer"),
    "timerOptions": m11,
    "trackYourSensorDataInstantly": MessageLookupByLibrary.simpleMessage(
      "Track your sensor data instantly from anywhere.",
    ),
    "unitCelsiusText": MessageLookupByLibrary.simpleMessage("Celsius"),
    "unitLuxText": MessageLookupByLibrary.simpleMessage("Lux"),
    "unitPpmText": MessageLookupByLibrary.simpleMessage("PPM"),
    "unlockDuration": MessageLookupByLibrary.simpleMessage("Unlock Duration"),
    "urgentIssues": MessageLookupByLibrary.simpleMessage("Urgent Issues"),
    "usagePurpose": MessageLookupByLibrary.simpleMessage("Usage Purpose"),
    "verifyAndContinue": MessageLookupByLibrary.simpleMessage(
      "Verify & Continue",
    ),
    "verifyBasicsBeforeSendingA": MessageLookupByLibrary.simpleMessage(
      "Verify basics before sending a report.",
    ),
    "verifyCode": MessageLookupByLibrary.simpleMessage("Verify Code"),
    "weAimToReplyWithin": MessageLookupByLibrary.simpleMessage(
      "We aim to reply within 24 to 48 hours.",
    ),
    "weAreCommittedToEnsuring": MessageLookupByLibrary.simpleMessage(
      "We are committed to ensuring your smart home experience is secure. We only use the information strictly necessary to operate your devices.",
    ),
    "weCollectMinimalInfoNeeded": MessageLookupByLibrary.simpleMessage(
      "We collect minimal info needed for the app.",
    ),
    "welcomeToFleexa": MessageLookupByLibrary.simpleMessage(
      "Welcome to Fleexa",
    ),
    "whatToInclude": MessageLookupByLibrary.simpleMessage("What to Include"),
    "youAreAllCaughtUp": MessageLookupByLibrary.simpleMessage(
      "You are all caught up!",
    ),
    "youManageYourSettingsAnd": MessageLookupByLibrary.simpleMessage(
      "You manage your settings and account.",
    ),
    "yourControl": MessageLookupByLibrary.simpleMessage("Your Control"),
    "yourDataProvidesStableLive": MessageLookupByLibrary.simpleMessage(
      "Your data provides stable, live features.",
    ),
  };
}
