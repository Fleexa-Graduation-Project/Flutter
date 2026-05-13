// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ar locale. All the
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
  String get localeName => 'ar';

  static String m0(startTemp, stopTemp) =>
      "يبدأ المكيف عند ${startTemp}°، ويتوقف عند ${stopTemp}°";

  static String m1(temp) => "درجة الحرارة الحالية ${temp}°";

  static String m2(duration) => "تم فتح الباب لمدة ${duration} دقيقة";

  static String m3(email) => "Please enter the OTP sent to your email ${email}";

  static String m4(time, minutes) => "الوقت المتبقي: ${time}س ${minutes}د";

  static String m5(count) => "منذ ${count} ساعة";

  static String m6(count) => "منذ ${count} دقيقة";

  static String m7(count) => "منذ ${count} ثانية";

  static String m8(count) => "${count} ساعة";

  static String m9(count) => "${count} دقيقة";

  static String m10(count) => "${count} ثانية";

  static String m11(options) => "${options} ساعة";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "AirConditionerUsage": MessageLookupByLibrary.simpleMessage(
      "استخدام مكيف الهواء",
    ),
    "CreateNewPassword": MessageLookupByLibrary.simpleMessage(
      "إنشاء كلمة مرور جديدة",
    ),
    "NewPassword": MessageLookupByLibrary.simpleMessage("كلمة مرور جديدة"),
    "SettingsCriticalAlerts": MessageLookupByLibrary.simpleMessage(
      "التنبيهات الحرجة",
    ),
    "Threshold": MessageLookupByLibrary.simpleMessage("الحد"),
    "ThresholdDescription": m0,
    "aboutSupport": MessageLookupByLibrary.simpleMessage("حول التطبيق والدعم"),
    "ac": MessageLookupByLibrary.simpleMessage("مكيف الهواء"),
    "acValue": MessageLookupByLibrary.simpleMessage("٢٠°م"),
    "activeHours": MessageLookupByLibrary.simpleMessage("ساعات النشاط"),
    "agreeWith": MessageLookupByLibrary.simpleMessage("الموافقة على "),
    "airConditioner": MessageLookupByLibrary.simpleMessage("مكيف الهواء"),
    "alertDoorLeftOpen": MessageLookupByLibrary.simpleMessage(
      "الباب ترك مفتوحاً",
    ),
    "authCreateAccountSubtitle": MessageLookupByLibrary.simpleMessage(
      "أنشئ حساباً جديداً للبدء",
    ),
    "authForgotPassword": MessageLookupByLibrary.simpleMessage(
      "هل نسيت كلمة المرور؟",
    ),
    "authHaveAccountQuestion": MessageLookupByLibrary.simpleMessage(
      "هل لديك حساب بالفعل؟",
    ),
    "authNoAccountQuestion": MessageLookupByLibrary.simpleMessage(
      "ليس لديك حساب؟",
    ),
    "authOr": MessageLookupByLibrary.simpleMessage("أو"),
    "authSignInTitle": MessageLookupByLibrary.simpleMessage("تسجيل الدخول"),
    "authSignUpTitle": MessageLookupByLibrary.simpleMessage("إنشاء حساب"),
    "authWelcomeBack": MessageLookupByLibrary.simpleMessage(
      "مرحباً بعودتك، لقد افتقدناك",
    ),
    "autoMode": MessageLookupByLibrary.simpleMessage("الوضع التلقائي"),
    "automaticMode": MessageLookupByLibrary.simpleMessage("الوضع التلقائي"),
    "avergeBrightness": MessageLookupByLibrary.simpleMessage("متوسط السطوع"),
    "avergeBrightnessValue": MessageLookupByLibrary.simpleMessage("١٥٪"),
    "avgUnlockDuration": MessageLookupByLibrary.simpleMessage(
      "متوسط مدة الفتح",
    ),
    "beSpecific": MessageLookupByLibrary.simpleMessage("كن دقيقاً"),
    "cancel": MessageLookupByLibrary.simpleMessage("إلغاء"),
    "clearReproductionStepsFixBugs": MessageLookupByLibrary.simpleMessage(
      "خطوات الإصدار الواضحة تصلح المشاكل بسرعة.",
    ),
    "confirmNewPassword": MessageLookupByLibrary.simpleMessage(
      "تأكيد كلمة المرور الجديدة",
    ),
    "contactSupport": MessageLookupByLibrary.simpleMessage("تواصل مع الدعم"),
    "controlType": MessageLookupByLibrary.simpleMessage("نوع التحكم"),
    "currentPassword": MessageLookupByLibrary.simpleMessage(
      "كلمة المرور الحالية",
    ),
    "currentStatus": MessageLookupByLibrary.simpleMessage("الحالة الحالية"),
    "currentTemp": m1,
    "currentTemperature": MessageLookupByLibrary.simpleMessage(
      "درجة الحرارة الحالية",
    ),
    "dataCollection": MessageLookupByLibrary.simpleMessage("جمع البيانات"),
    "dayFri": MessageLookupByLibrary.simpleMessage("الجمعة"),
    "dayMon": MessageLookupByLibrary.simpleMessage("الاثنين"),
    "daySat": MessageLookupByLibrary.simpleMessage("السبت"),
    "daySun": MessageLookupByLibrary.simpleMessage("الأحد"),
    "dayThu": MessageLookupByLibrary.simpleMessage("الخميس"),
    "dayTue": MessageLookupByLibrary.simpleMessage("الثلاثاء"),
    "dayWed": MessageLookupByLibrary.simpleMessage("الأربعاء"),
    "deleteAccount": MessageLookupByLibrary.simpleMessage("حذف الحساب"),
    "deviceStatus": MessageLookupByLibrary.simpleMessage("حالة الجهاز"),
    "didntReceiveOTP": MessageLookupByLibrary.simpleMessage(
      "لم تستلم رمز التحقق؟",
    ),
    "doorLock": MessageLookupByLibrary.simpleMessage("قفل الباب"),
    "doorLockedStatus": MessageLookupByLibrary.simpleMessage("الباب مغلق"),
    "doorOpenTooLong": m2,
    "doorUnlockedStatus": MessageLookupByLibrary.simpleMessage("الباب مفتوح"),
    "doorvalue": MessageLookupByLibrary.simpleMessage("٢٤ دقيقة"),
    "editProfile": MessageLookupByLibrary.simpleMessage("تعديل الملف الشخصي"),
    "emailUs": MessageLookupByLibrary.simpleMessage("راسلنا عبر البريد"),
    "ends": MessageLookupByLibrary.simpleMessage("توقف:"),
    "enterYourEmail": MessageLookupByLibrary.simpleMessage(
      "أدخل عنوان بريدك الإلكتروني لاستعادة كلمة المرور",
    ),
    "enterYourPasswordToDelete": MessageLookupByLibrary.simpleMessage(
      "أدخل كلمة المرور لحذف حسابك ",
    ),
    "fieldConfirmPassword": MessageLookupByLibrary.simpleMessage(
      "تأكيد كلمة المرور",
    ),
    "fieldEmail": MessageLookupByLibrary.simpleMessage("البريد الإلكتروني"),
    "fieldPassword": MessageLookupByLibrary.simpleMessage("كلمة المرور"),
    "fieldUsername": MessageLookupByLibrary.simpleMessage("اسم المستخدم"),
    "filterLast24h": MessageLookupByLibrary.simpleMessage("آخر 24 ساعة"),
    "filterLastMonth": MessageLookupByLibrary.simpleMessage("الشهر الماضي"),
    "filterLastWeek": MessageLookupByLibrary.simpleMessage("الأسبوع الماضي"),
    "filterYourFleet": MessageLookupByLibrary.simpleMessage("تصفية أجهزتك"),
    "fleexa": MessageLookupByLibrary.simpleMessage("فليكسا"),
    "gasLevel": MessageLookupByLibrary.simpleMessage("مستوى الغاز"),
    "gasLevelExceeded": MessageLookupByLibrary.simpleMessage(
      "مستوى الغاز تجاوز الحد الآمن",
    ),
    "gasLevelValue": MessageLookupByLibrary.simpleMessage("٨٢٠"),
    "gasSensor": MessageLookupByLibrary.simpleMessage("حساس الغاز"),
    "gasSpikeDetected": MessageLookupByLibrary.simpleMessage(
      "تم الكشف عن ارتفاع مفاجئ في الغاز",
    ),
    "gasStatus": MessageLookupByLibrary.simpleMessage("حالة الغاز"),
    "getNotifiedImmediatelyWhenThresholds":
        MessageLookupByLibrary.simpleMessage(
          "احصل على تنبيهات فورية عند وصول البيانات للحدود المعينة.",
        ),
    "getStarted": MessageLookupByLibrary.simpleMessage("ابدأ الآن"),
    "helpUsImproveFleexaProviding": MessageLookupByLibrary.simpleMessage(
      "ساعدنا في تحسين فليكسا! توفير خطوات واضحة يساعد المهندسين في إصلاح الأخطاء.",
    ),
    "home": MessageLookupByLibrary.simpleMessage("الرئيسية"),
    "homeActuators": MessageLookupByLibrary.simpleMessage("المشغلات"),
    "homeAllDevices": MessageLookupByLibrary.simpleMessage("كل الأجهزة"),
    "homeHello": MessageLookupByLibrary.simpleMessage("مرحباً،"),
    "homeMyDevices": MessageLookupByLibrary.simpleMessage("أجهزتي"),
    "homeNotifications": MessageLookupByLibrary.simpleMessage("الإشعارات"),
    "homeSensors": MessageLookupByLibrary.simpleMessage("الحساسات"),
    "homeWelcome": MessageLookupByLibrary.simpleMessage("أهلاً بك في منزلك"),
    "howCanWeHelp": MessageLookupByLibrary.simpleMessage("كيف يمكننا مساعدتك؟"),
    "infoStatusCritical": MessageLookupByLibrary.simpleMessage("• خطر: "),
    "infoStatusSafe": MessageLookupByLibrary.simpleMessage("• آمن: "),
    "infoStatusWarning": MessageLookupByLibrary.simpleMessage("• تحذير: "),
    "instantAlerts": MessageLookupByLibrary.simpleMessage("تنبيهات فورية"),
    "isRequired": MessageLookupByLibrary.simpleMessage("مطلوب"),
    "labelAlertsAndWarnings": MessageLookupByLibrary.simpleMessage(
      "التنبيهات والتحذيرات",
    ),
    "labelDevicesOnline": MessageLookupByLibrary.simpleMessage(
      "الأجهزة المتصلة",
    ),
    "labelEnergyConsumption": MessageLookupByLibrary.simpleMessage(
      "استهلاك الطاقة",
    ),
    "labelInsights": MessageLookupByLibrary.simpleMessage("الرؤى"),
    "labelRelatedDevices": MessageLookupByLibrary.simpleMessage(
      "الأجهزة ذات الصلة",
    ),
    "labelSummaries": MessageLookupByLibrary.simpleMessage("الملخصات"),
    "labelSystemStatus": MessageLookupByLibrary.simpleMessage("حالة النظام"),
    "languageArabic": MessageLookupByLibrary.simpleMessage("العربية"),
    "languageEnglish": MessageLookupByLibrary.simpleMessage("الإنجليزية"),
    "lastActivity": MessageLookupByLibrary.simpleMessage("آخر نشاط"),
    "lastUpdateValue": MessageLookupByLibrary.simpleMessage("منذ ٢ ثانية"),
    "latUpdate": MessageLookupByLibrary.simpleMessage("آخر تحديث"),
    "lightLevelOverTime": MessageLookupByLibrary.simpleMessage("مستوى الضوء"),
    "lightSensor": MessageLookupByLibrary.simpleMessage("حساس الضوء"),
    "lightstatus": MessageLookupByLibrary.simpleMessage("حالة الضوء"),
    "liveDevices": MessageLookupByLibrary.simpleMessage("الأجهزة المتصلة"),
    "manualMode": MessageLookupByLibrary.simpleMessage("الوضع اليدوي"),
    "markAsRead": MessageLookupByLibrary.simpleMessage("تحديد كمقروء"),
    "mode": MessageLookupByLibrary.simpleMessage("الوضع"),
    "modeCooling": MessageLookupByLibrary.simpleMessage("تبريد"),
    "modeDry": MessageLookupByLibrary.simpleMessage("جاف"),
    "modeFanOnly": MessageLookupByLibrary.simpleMessage("مروحة فقط"),
    "modeHeating": MessageLookupByLibrary.simpleMessage("تدفئة"),
    "needAssistanceWithYourApp": MessageLookupByLibrary.simpleMessage(
      "تحتاج مساعدة بشأن التطبيق أو الأجهزة؟ فريق الدعم لدينا جاهز لمساعدتك سريعاً.",
    ),
    "noRecentActivities": MessageLookupByLibrary.simpleMessage(
      "لا توجد أنشطة حديثة.",
    ),
    "pleaseEnterTheOTP": m3,
    "precheckSteps": MessageLookupByLibrary.simpleMessage("خطوات الفحص المسبق"),
    "privacyPolicy": MessageLookupByLibrary.simpleMessage("سياسة الخصوصية"),
    "provideDetailsToSpeedUp": MessageLookupByLibrary.simpleMessage(
      "يُرجى تقديم التفاصيل لتسريع حل المشكلة.",
    ),
    "reachOutDirectlyAtSupportfleexaapp": MessageLookupByLibrary.simpleMessage(
      "تواصل معنا مباشرة عبر support@fleexa.app.",
    ),
    "realtimeMonitoring": MessageLookupByLibrary.simpleMessage("مراقبة مباشرة"),
    "recentActivities": MessageLookupByLibrary.simpleMessage("الأنشطة الأخيرة"),
    "remainingTime": m4,
    "reportAProblem": MessageLookupByLibrary.simpleMessage("الإبلاغ عن مشكلة"),
    "resendOTP": MessageLookupByLibrary.simpleMessage("إعادة إرسال رمز التحقق"),
    "resetPassword": MessageLookupByLibrary.simpleMessage(
      "إعادة تعيين كلمة المرور",
    ),
    "responseTimes": MessageLookupByLibrary.simpleMessage("أوقات الرد"),
    "runYourIotSimulationWithout": MessageLookupByLibrary.simpleMessage(
      "قم بتشغيل محاكاة إنترنت الأشياء بدون أي أجهزة مادية.",
    ),
    "running": MessageLookupByLibrary.simpleMessage("تشغيل"),
    "saveChanges": MessageLookupByLibrary.simpleMessage("حفظ التغييرات"),
    "securityAndHardwareDropsAre": MessageLookupByLibrary.simpleMessage(
      "الأمان وفصل الأجهزة هي أولوية قصوى.",
    ),
    "sendOTP": MessageLookupByLibrary.simpleMessage("إرسال رمز التحقق"),
    "set": MessageLookupByLibrary.simpleMessage("تعيين"),
    "setCustomTimer": MessageLookupByLibrary.simpleMessage("تعيين مؤقت مخصص"),
    "setTime": MessageLookupByLibrary.simpleMessage("تعيين الوقت"),
    "setTimer": MessageLookupByLibrary.simpleMessage("تعيين المؤقت"),
    "settings": MessageLookupByLibrary.simpleMessage("الإعدادات"),
    "settingsAboutAndSupport": MessageLookupByLibrary.simpleMessage("حول ودعم"),
    "settingsAccountAndSecurity": MessageLookupByLibrary.simpleMessage(
      "الحساب والأمان",
    ),
    "settingsChangePassword": MessageLookupByLibrary.simpleMessage(
      "تغيير كلمة المرور",
    ),
    "settingsCriticalAlertsDescription": MessageLookupByLibrary.simpleMessage(
      "تلقي التنبيهات للأحداث الحرجة في النظام",
    ),
    "settingsDeleteAccount": MessageLookupByLibrary.simpleMessage("حذف الحساب"),
    "settingsInfoLogs": MessageLookupByLibrary.simpleMessage("سجلات المعلومات"),
    "settingsInfoLogsDescription": MessageLookupByLibrary.simpleMessage(
      "تلقي سجلات المعلومات والتحديثات",
    ),
    "settingsLanguage": MessageLookupByLibrary.simpleMessage("اللغة"),
    "settingsLogOut": MessageLookupByLibrary.simpleMessage("تسجيل خروج"),
    "settingsNotificationsAndAlerts": MessageLookupByLibrary.simpleMessage(
      "الإشعارات والتنبيهات",
    ),
    "settingsProfile": MessageLookupByLibrary.simpleMessage("الملف الشخصي"),
    "settingsPushNotifications": MessageLookupByLibrary.simpleMessage(
      "الإشعارات الفورية",
    ),
    "settingsThemeMode": MessageLookupByLibrary.simpleMessage("وضع السمة"),
    "settingsTitle": MessageLookupByLibrary.simpleMessage("الإعدادات"),
    "settingsVersion": MessageLookupByLibrary.simpleMessage("الإصدار"),
    "settingsWarningAlerts": MessageLookupByLibrary.simpleMessage(
      "تنبيهات التحذير",
    ),
    "settingsWarningAlertsDescription": MessageLookupByLibrary.simpleMessage(
      "تلقي التنبيهات للأحداث على مستوى التحذير",
    ),
    "skip": MessageLookupByLibrary.simpleMessage("تخطي"),
    "smartControl": MessageLookupByLibrary.simpleMessage("تحكم ذكي"),
    "smartHomeVersion100": MessageLookupByLibrary.simpleMessage(
      "المنزل الذكي • الإصدار 1.0.0",
    ),
    "smartRules": MessageLookupByLibrary.simpleMessage("القواعد الذكية"),
    "stability": MessageLookupByLibrary.simpleMessage("الاستقرار"),
    "stable": MessageLookupByLibrary.simpleMessage("مستقر"),
    "starts": MessageLookupByLibrary.simpleMessage("ابدأ:"),
    "statusAboveHigh": MessageLookupByLibrary.simpleMessage("أعلى من المرتفع"),
    "statusAboveNormal": MessageLookupByLibrary.simpleMessage(
      "أعلى من الطبيعي",
    ),
    "statusBright": MessageLookupByLibrary.simpleMessage("فاتح"),
    "statusClosed": MessageLookupByLibrary.simpleMessage("مغلق"),
    "statusConnected": MessageLookupByLibrary.simpleMessage("متصل"),
    "statusCritical": MessageLookupByLibrary.simpleMessage("خطر"),
    "statusDark": MessageLookupByLibrary.simpleMessage("داكن"),
    "statusDisconnected": MessageLookupByLibrary.simpleMessage("غير متصل"),
    "statusGuide": MessageLookupByLibrary.simpleMessage("دليل الحالة: \n\n"),
    "statusHigh": MessageLookupByLibrary.simpleMessage("مرتفع"),
    "statusLow": MessageLookupByLibrary.simpleMessage("منخفض"),
    "statusNormal": MessageLookupByLibrary.simpleMessage("طبيعي"),
    "statusOff": MessageLookupByLibrary.simpleMessage("إيقاف"),
    "statusOn": MessageLookupByLibrary.simpleMessage("تشغيل"),
    "statusOpened": MessageLookupByLibrary.simpleMessage("مفتوح"),
    "statusSafe": MessageLookupByLibrary.simpleMessage("آمن"),
    "statusWarning": MessageLookupByLibrary.simpleMessage("تحذير"),
    "statuscapitalcritical": MessageLookupByLibrary.simpleMessage("خطر"),
    "supportfleexaapp": MessageLookupByLibrary.simpleMessage(
      "support@fleexa.app",
    ),
    "system": MessageLookupByLibrary.simpleMessage("النظام"),
    "systemAnalytics": MessageLookupByLibrary.simpleMessage("تحليلات النظام"),
    "systemNotifications": MessageLookupByLibrary.simpleMessage(
      "إشعارات النظام",
    ),
    "systemOverview": MessageLookupByLibrary.simpleMessage(
      "نظرة عامة على النظام",
    ),
    "target": MessageLookupByLibrary.simpleMessage("الهدف"),
    "tempAverage": MessageLookupByLibrary.simpleMessage("المتوسط"),
    "tempAvg": MessageLookupByLibrary.simpleMessage("المتوسط"),
    "tempInside": MessageLookupByLibrary.simpleMessage("داخليًا"),
    "tempMax": MessageLookupByLibrary.simpleMessage("الحد الأقصى"),
    "tempMin": MessageLookupByLibrary.simpleMessage("الحد الأدنى"),
    "tempOutside": MessageLookupByLibrary.simpleMessage("خارجيًا"),
    "tempPerformance": MessageLookupByLibrary.simpleMessage(
      "أداء درجة الحرارة",
    ),
    "tempSensor": MessageLookupByLibrary.simpleMessage("حساس الحرارة"),
    "temperature": MessageLookupByLibrary.simpleMessage("درجة الحرارة"),
    "temperatureSensor": MessageLookupByLibrary.simpleMessage("حساس الحرارة"),
    "temperatureStatus": MessageLookupByLibrary.simpleMessage("حالة الحرارة"),
    "termsAndConditions": MessageLookupByLibrary.simpleMessage(
      "الشروط والأحكام",
    ),
    "themeModeDark": MessageLookupByLibrary.simpleMessage("داكن"),
    "themeModeLight": MessageLookupByLibrary.simpleMessage("فاتح"),
    "themeModeSystem": MessageLookupByLibrary.simpleMessage("النظام"),
    "timeAgoHour": m5,
    "timeAgoMin": m6,
    "timeAgoSec": m7,
    "timeHour": m8,
    "timeMin": m9,
    "timeSec": m10,
    "timer": MessageLookupByLibrary.simpleMessage("مؤقت"),
    "timerOptions": m11,
    "trackYourSensorDataInstantly": MessageLookupByLibrary.simpleMessage(
      "تتبع بيانات مستشعراتك فوراً من أي مكان.",
    ),
    "unitCelsiusText": MessageLookupByLibrary.simpleMessage("Celsius"),
    "unitLuxText": MessageLookupByLibrary.simpleMessage("Lux"),
    "unitPpmText": MessageLookupByLibrary.simpleMessage("PPM"),
    "unlockDuration": MessageLookupByLibrary.simpleMessage("مدة الفتح"),
    "urgentIssues": MessageLookupByLibrary.simpleMessage("المشكلات الطارئة"),
    "usagePurpose": MessageLookupByLibrary.simpleMessage("غرض الاستخدام"),
    "verifyAndContinue": MessageLookupByLibrary.simpleMessage("تحقق واستمر"),
    "verifyBasicsBeforeSendingA": MessageLookupByLibrary.simpleMessage(
      "تأكد من الأساسيات قبل إرسال التقارير.",
    ),
    "verifyCode": MessageLookupByLibrary.simpleMessage("تحقق من الرمز"),
    "weAimToReplyWithin": MessageLookupByLibrary.simpleMessage(
      "نسعى للرد خلال ٢٤ إلى ٤٨ ساعة.",
    ),
    "weAreCommittedToEnsuring": MessageLookupByLibrary.simpleMessage(
      "نحن ملتزمون بضمان أمان منزلك الذكي. نستخدم فقط المعلومات الضرورية لتشغيل أجهزتك.",
    ),
    "weCollectMinimalInfoNeeded": MessageLookupByLibrary.simpleMessage(
      "نجمع الحد الأدنى من المعلومات المطلوبة للتطبيق.",
    ),
    "welcomeToFleexa": MessageLookupByLibrary.simpleMessage(
      "مرحبًا بك في فليكسا",
    ),
    "whatToInclude": MessageLookupByLibrary.simpleMessage("ما يجب تضمينه"),
    "youAreAllCaughtUp": MessageLookupByLibrary.simpleMessage("كل شيء محدث!"),
    "youManageYourSettingsAnd": MessageLookupByLibrary.simpleMessage(
      "أنت تدير إعداداتك وحسابك.",
    ),
    "yourControl": MessageLookupByLibrary.simpleMessage("تحكمك"),
    "yourDataProvidesStableLive": MessageLookupByLibrary.simpleMessage(
      "بياناتك تساعد في استقرار المميزات المباشرة.",
    ),
  };
}
