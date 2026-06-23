// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  // skipped getter for the '//' key

  /// `Sign In`
  String get authSignInTitle {
    return Intl.message('Sign In', name: 'authSignInTitle', desc: '', args: []);
  }

  /// `Sign Up`
  String get authSignUpTitle {
    return Intl.message('Sign Up', name: 'authSignUpTitle', desc: '', args: []);
  }

  /// `Welcome back, you've been missed`
  String get authWelcomeBack {
    return Intl.message(
      'Welcome back, you\'ve been missed',
      name: 'authWelcomeBack',
      desc: '',
      args: [],
    );
  }

  /// `Create new account to get Started`
  String get authCreateAccountSubtitle {
    return Intl.message(
      'Create new account to get Started',
      name: 'authCreateAccountSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Email Address`
  String get fieldEmail {
    return Intl.message(
      'Email Address',
      name: 'fieldEmail',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get fieldUsername {
    return Intl.message('Username', name: 'fieldUsername', desc: '', args: []);
  }

  /// `Password`
  String get fieldPassword {
    return Intl.message('Password', name: 'fieldPassword', desc: '', args: []);
  }

  /// `Confirm Password`
  String get fieldConfirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'fieldConfirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get authForgotPassword {
    return Intl.message(
      'Forgot Password?',
      name: 'authForgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `or`
  String get authOr {
    return Intl.message('or', name: 'authOr', desc: '', args: []);
  }

  /// `Agree with `
  String get agreeWith {
    return Intl.message('Agree with ', name: 'agreeWith', desc: '', args: []);
  }

  /// `Terms & Conditions`
  String get termsAndConditions {
    return Intl.message(
      'Terms & Conditions',
      name: 'termsAndConditions',
      desc: '',
      args: [],
    );
  }

  /// `Don't Have an Account ?`
  String get authNoAccountQuestion {
    return Intl.message(
      'Don\'t Have an Account ?',
      name: 'authNoAccountQuestion',
      desc: '',
      args: [],
    );
  }

  /// `Already Have an Account?`
  String get authHaveAccountQuestion {
    return Intl.message(
      'Already Have an Account?',
      name: 'authHaveAccountQuestion',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message('Home', name: 'home', desc: '', args: []);
  }

  /// `System`
  String get system {
    return Intl.message('System', name: 'system', desc: '', args: []);
  }

  /// `Settings`
  String get settings {
    return Intl.message('Settings', name: 'settings', desc: '', args: []);
  }

  /// `Hello,`
  String get homeHello {
    return Intl.message('Hello,', name: 'homeHello', desc: '', args: []);
  }

  /// `Welcome Home`
  String get homeWelcome {
    return Intl.message(
      'Welcome Home',
      name: 'homeWelcome',
      desc: '',
      args: [],
    );
  }

  /// `My Devices`
  String get homeMyDevices {
    return Intl.message(
      'My Devices',
      name: 'homeMyDevices',
      desc: '',
      args: [],
    );
  }

  /// `All Devices`
  String get homeAllDevices {
    return Intl.message(
      'All Devices',
      name: 'homeAllDevices',
      desc: '',
      args: [],
    );
  }

  /// `Sensors`
  String get homeSensors {
    return Intl.message('Sensors', name: 'homeSensors', desc: '', args: []);
  }

  /// `Actuators`
  String get homeActuators {
    return Intl.message('Actuators', name: 'homeActuators', desc: '', args: []);
  }

  /// `Notifications`
  String get homeNotifications {
    return Intl.message(
      'Notifications',
      name: 'homeNotifications',
      desc: '',
      args: [],
    );
  }

  /// `System Status`
  String get labelSystemStatus {
    return Intl.message(
      'System Status',
      name: 'labelSystemStatus',
      desc: '',
      args: [],
    );
  }

  /// `System Overview`
  String get systemOverview {
    return Intl.message(
      'System Overview',
      name: 'systemOverview',
      desc: '',
      args: [],
    );
  }

  /// `Devices Online`
  String get labelDevicesOnline {
    return Intl.message(
      'Devices Online',
      name: 'labelDevicesOnline',
      desc: '',
      args: [],
    );
  }

  /// `Insights`
  String get labelInsights {
    return Intl.message('Insights', name: 'labelInsights', desc: '', args: []);
  }

  /// `Energy Consumption`
  String get labelEnergyConsumption {
    return Intl.message(
      'Energy Consumption',
      name: 'labelEnergyConsumption',
      desc: '',
      args: [],
    );
  }

  /// `Alerts & Warnings`
  String get labelAlertsAndWarnings {
    return Intl.message(
      'Alerts & Warnings',
      name: 'labelAlertsAndWarnings',
      desc: '',
      args: [],
    );
  }

  /// `Summaries`
  String get labelSummaries {
    return Intl.message(
      'Summaries',
      name: 'labelSummaries',
      desc: '',
      args: [],
    );
  }

  /// `Current Status`
  String get currentStatus {
    return Intl.message(
      'Current Status',
      name: 'currentStatus',
      desc: '',
      args: [],
    );
  }

  /// `Connected`
  String get statusConnected {
    return Intl.message(
      'Connected',
      name: 'statusConnected',
      desc: '',
      args: [],
    );
  }

  /// `Disconnected`
  String get statusDisconnected {
    return Intl.message(
      'Disconnected',
      name: 'statusDisconnected',
      desc: '',
      args: [],
    );
  }

  /// `Warning`
  String get statusWarning {
    return Intl.message('Warning', name: 'statusWarning', desc: '', args: []);
  }

  /// `Safe`
  String get statusSafe {
    return Intl.message('Safe', name: 'statusSafe', desc: '', args: []);
  }

  /// `Critical`
  String get statusCritical {
    return Intl.message('Critical', name: 'statusCritical', desc: '', args: []);
  }

  /// `CRITICAL`
  String get statuscapitalcritical {
    return Intl.message(
      'CRITICAL',
      name: 'statuscapitalcritical',
      desc: '',
      args: [],
    );
  }

  /// `Normal`
  String get statusNormal {
    return Intl.message('Normal', name: 'statusNormal', desc: '', args: []);
  }

  /// `Above Normal`
  String get statusAboveNormal {
    return Intl.message(
      'Above Normal',
      name: 'statusAboveNormal',
      desc: '',
      args: [],
    );
  }

  /// `High`
  String get statusHigh {
    return Intl.message('High', name: 'statusHigh', desc: '', args: []);
  }

  /// `Above High`
  String get statusAboveHigh {
    return Intl.message(
      'Above High',
      name: 'statusAboveHigh',
      desc: '',
      args: [],
    );
  }

  /// `stable`
  String get stable {
    return Intl.message('stable', name: 'stable', desc: '', args: []);
  }

  /// `stability`
  String get stability {
    return Intl.message('stability', name: 'stability', desc: '', args: []);
  }

  /// `Low`
  String get statusLow {
    return Intl.message('Low', name: 'statusLow', desc: '', args: []);
  }

  /// `Dark`
  String get statusDark {
    return Intl.message('Dark', name: 'statusDark', desc: '', args: []);
  }

  /// `Bright`
  String get statusBright {
    return Intl.message('Bright', name: 'statusBright', desc: '', args: []);
  }

  /// `Closed`
  String get statusClosed {
    return Intl.message('Closed', name: 'statusClosed', desc: '', args: []);
  }

  /// `Opened`
  String get statusOpened {
    return Intl.message('Opened', name: 'statusOpened', desc: '', args: []);
  }

  /// `ON`
  String get statusOn {
    return Intl.message('ON', name: 'statusOn', desc: '', args: []);
  }

  /// `OFF`
  String get statusOff {
    return Intl.message('OFF', name: 'statusOff', desc: '', args: []);
  }

  /// `Last 24 Hours`
  String get filterLast24h {
    return Intl.message(
      'Last 24 Hours',
      name: 'filterLast24h',
      desc: '',
      args: [],
    );
  }

  /// `Last 5 Days`
  String get filterFiveDays {
    return Intl.message(
      'Last 5 Days',
      name: 'filterFiveDays',
      desc: '',
      args: [],
    );
  }

  /// `Last Week`
  String get filterLastWeek {
    return Intl.message(
      'Last Week',
      name: 'filterLastWeek',
      desc: '',
      args: [],
    );
  }

  /// `Last Month`
  String get filterLastMonth {
    return Intl.message(
      'Last Month',
      name: 'filterLastMonth',
      desc: '',
      args: [],
    );
  }

  /// `Sat`
  String get daySat {
    return Intl.message('Sat', name: 'daySat', desc: '', args: []);
  }

  /// `Sun`
  String get daySun {
    return Intl.message('Sun', name: 'daySun', desc: '', args: []);
  }

  /// `Mon`
  String get dayMon {
    return Intl.message('Mon', name: 'dayMon', desc: '', args: []);
  }

  /// `Tue`
  String get dayTue {
    return Intl.message('Tue', name: 'dayTue', desc: '', args: []);
  }

  /// `Wed`
  String get dayWed {
    return Intl.message('Wed', name: 'dayWed', desc: '', args: []);
  }

  /// `Thu`
  String get dayThu {
    return Intl.message('Thu', name: 'dayThu', desc: '', args: []);
  }

  /// `Fri`
  String get dayFri {
    return Intl.message('Fri', name: 'dayFri', desc: '', args: []);
  }

  /// `Temperature Sensor`
  String get temperatureSensor {
    return Intl.message(
      'Temperature Sensor',
      name: 'temperatureSensor',
      desc: '',
      args: [],
    );
  }

  /// `Temp Sensor`
  String get tempSensor {
    return Intl.message('Temp Sensor', name: 'tempSensor', desc: '', args: []);
  }

  /// `Gas Sensor`
  String get gasSensor {
    return Intl.message('Gas Sensor', name: 'gasSensor', desc: '', args: []);
  }

  /// `Light Sensor`
  String get lightSensor {
    return Intl.message(
      'Light Sensor',
      name: 'lightSensor',
      desc: '',
      args: [],
    );
  }

  /// `Temp Status`
  String get temperatureStatus {
    return Intl.message(
      'Temp Status',
      name: 'temperatureStatus',
      desc: '',
      args: [],
    );
  }

  /// `Current Temp`
  String get currentTemperature {
    return Intl.message(
      'Current Temp',
      name: 'currentTemperature',
      desc: '',
      args: [],
    );
  }

  /// `Device Status`
  String get deviceStatus {
    return Intl.message(
      'Device Status',
      name: 'deviceStatus',
      desc: '',
      args: [],
    );
  }

  /// `Min`
  String get tempMin {
    return Intl.message('Min', name: 'tempMin', desc: '', args: []);
  }

  /// `Max`
  String get tempMax {
    return Intl.message('Max', name: 'tempMax', desc: '', args: []);
  }

  /// `Average`
  String get tempAverage {
    return Intl.message('Average', name: 'tempAverage', desc: '', args: []);
  }

  /// `Avg`
  String get tempAvg {
    return Intl.message('Avg', name: 'tempAvg', desc: '', args: []);
  }

  /// `Avg Brightness`
  String get avergeBrightness {
    return Intl.message(
      'Avg Brightness',
      name: 'avergeBrightness',
      desc: '',
      args: [],
    );
  }

  /// `15%`
  String get avergeBrightnessValue {
    return Intl.message(
      '15%',
      name: 'avergeBrightnessValue',
      desc: '',
      args: [],
    );
  }

  /// `Related Devices`
  String get labelRelatedDevices {
    return Intl.message(
      'Related Devices',
      name: 'labelRelatedDevices',
      desc: '',
      args: [],
    );
  }

  /// `Temperature`
  String get temperature {
    return Intl.message('Temperature', name: 'temperature', desc: '', args: []);
  }

  /// `Gas Status`
  String get gasStatus {
    return Intl.message('Gas Status', name: 'gasStatus', desc: '', args: []);
  }

  /// `Gas Level`
  String get gasLevel {
    return Intl.message('Gas Level', name: 'gasLevel', desc: '', args: []);
  }

  /// `820`
  String get gasLevelValue {
    return Intl.message('820', name: 'gasLevelValue', desc: '', args: []);
  }

  /// `Gas level has exceeded the safe limit`
  String get gasLevelExceeded {
    return Intl.message(
      'Gas level has exceeded the safe limit',
      name: 'gasLevelExceeded',
      desc: '',
      args: [],
    );
  }

  /// `Gas spike detected`
  String get gasSpikeDetected {
    return Intl.message(
      'Gas spike detected',
      name: 'gasSpikeDetected',
      desc: '',
      args: [],
    );
  }

  /// `Status Guide: \n\n`
  String get statusGuide {
    return Intl.message(
      'Status Guide: \n\n',
      name: 'statusGuide',
      desc: '',
      args: [],
    );
  }

  /// `• Safe: `
  String get infoStatusSafe {
    return Intl.message('• Safe: ', name: 'infoStatusSafe', desc: '', args: []);
  }

  /// `• Warning: `
  String get infoStatusWarning {
    return Intl.message(
      '• Warning: ',
      name: 'infoStatusWarning',
      desc: '',
      args: [],
    );
  }

  /// `• Critical: `
  String get infoStatusCritical {
    return Intl.message(
      '• Critical: ',
      name: 'infoStatusCritical',
      desc: '',
      args: [],
    );
  }

  /// `Light Status`
  String get lightstatus {
    return Intl.message(
      'Light Status',
      name: 'lightstatus',
      desc: '',
      args: [],
    );
  }

  /// `Light Level Over Time`
  String get lightLevelOverTime {
    return Intl.message(
      'Light Level Over Time',
      name: 'lightLevelOverTime',
      desc: '',
      args: [],
    );
  }

  /// `Celsius`
  String get unitCelsiusText {
    return Intl.message('Celsius', name: 'unitCelsiusText', desc: '', args: []);
  }

  /// `PPM`
  String get unitPpmText {
    return Intl.message('PPM', name: 'unitPpmText', desc: '', args: []);
  }

  /// `Lux`
  String get unitLuxText {
    return Intl.message('Lux', name: 'unitLuxText', desc: '', args: []);
  }

  /// `{count} hour ago`
  String timeAgoHour(Object count) {
    return Intl.message(
      '$count hour ago',
      name: 'timeAgoHour',
      desc: '',
      args: [count],
    );
  }

  /// `{count} min ago`
  String timeAgoMin(Object count) {
    return Intl.message(
      '$count min ago',
      name: 'timeAgoMin',
      desc: '',
      args: [count],
    );
  }

  /// `{count} sec ago`
  String timeAgoSec(Object count) {
    return Intl.message(
      '$count sec ago',
      name: 'timeAgoSec',
      desc: '',
      args: [count],
    );
  }

  /// `{count} hour`
  String timeHour(Object count) {
    return Intl.message(
      '$count hour',
      name: 'timeHour',
      desc: '',
      args: [count],
    );
  }

  /// `{count} min`
  String timeMin(Object count) {
    return Intl.message('$count min', name: 'timeMin', desc: '', args: [count]);
  }

  /// `{count} sec`
  String timeSec(Object count) {
    return Intl.message('$count sec', name: 'timeSec', desc: '', args: [count]);
  }

  /// `Door Lock`
  String get doorLock {
    return Intl.message('Door Lock', name: 'doorLock', desc: '', args: []);
  }

  /// `Door is Locked`
  String get doorLockedStatus {
    return Intl.message(
      'Door is Locked',
      name: 'doorLockedStatus',
      desc: '',
      args: [],
    );
  }

  /// `Door is Unlocked`
  String get doorUnlockedStatus {
    return Intl.message(
      'Door is Unlocked',
      name: 'doorUnlockedStatus',
      desc: '',
      args: [],
    );
  }

  /// `24 mins`
  String get doorvalue {
    return Intl.message('24 mins', name: 'doorvalue', desc: '', args: []);
  }

  /// `20°C`
  String get acValue {
    return Intl.message('20°C', name: 'acValue', desc: '', args: []);
  }

  /// `Recent Activities`
  String get recentActivities {
    return Intl.message(
      'Recent Activities',
      name: 'recentActivities',
      desc: '',
      args: [],
    );
  }

  /// `Last Activity`
  String get lastActivity {
    return Intl.message(
      'Last Activity',
      name: 'lastActivity',
      desc: '',
      args: [],
    );
  }

  /// `Last Update`
  String get latUpdate {
    return Intl.message('Last Update', name: 'latUpdate', desc: '', args: []);
  }

  /// `2 sec ago`
  String get lastUpdateValue {
    return Intl.message(
      '2 sec ago',
      name: 'lastUpdateValue',
      desc: '',
      args: [],
    );
  }

  /// `Unlock Duration`
  String get unlockDuration {
    return Intl.message(
      'Unlock Duration',
      name: 'unlockDuration',
      desc: '',
      args: [],
    );
  }

  /// `Average Unlock Duration`
  String get avgUnlockDuration {
    return Intl.message(
      'Average Unlock Duration',
      name: 'avgUnlockDuration',
      desc: '',
      args: [],
    );
  }

  /// `Door Left Open`
  String get alertDoorLeftOpen {
    return Intl.message(
      'Door Left Open',
      name: 'alertDoorLeftOpen',
      desc: '',
      args: [],
    );
  }

  /// `The door has been open for {duration} minutes`
  String doorOpenTooLong(int duration) {
    return Intl.message(
      'The door has been open for $duration minutes',
      name: 'doorOpenTooLong',
      desc: 'Alert message when door is left open too long',
      args: [duration],
    );
  }

  /// `Air Conditioner`
  String get airConditioner {
    return Intl.message(
      'Air Conditioner',
      name: 'airConditioner',
      desc: '',
      args: [],
    );
  }

  /// `AC`
  String get ac {
    return Intl.message('AC', name: 'ac', desc: '', args: []);
  }

  /// `Automatic Mode`
  String get automaticMode {
    return Intl.message(
      'Automatic Mode',
      name: 'automaticMode',
      desc: '',
      args: [],
    );
  }

  /// `Manual Mode`
  String get manualMode {
    return Intl.message('Manual Mode', name: 'manualMode', desc: '', args: []);
  }

  /// `Mode`
  String get mode {
    return Intl.message('Mode', name: 'mode', desc: '', args: []);
  }

  /// `Cooling`
  String get modeCooling {
    return Intl.message('Cooling', name: 'modeCooling', desc: '', args: []);
  }

  /// `Heating`
  String get modeHeating {
    return Intl.message('Heating', name: 'modeHeating', desc: '', args: []);
  }

  /// `Dry`
  String get modeDry {
    return Intl.message('Dry', name: 'modeDry', desc: '', args: []);
  }

  /// `Fan Only`
  String get modeFanOnly {
    return Intl.message('Fan Only', name: 'modeFanOnly', desc: '', args: []);
  }

  /// `Outside`
  String get tempOutside {
    return Intl.message('Outside', name: 'tempOutside', desc: '', args: []);
  }

  /// `Inside`
  String get tempInside {
    return Intl.message('Inside', name: 'tempInside', desc: '', args: []);
  }

  /// `Timer`
  String get timer {
    return Intl.message('Timer', name: 'timer', desc: '', args: []);
  }

  /// `Set Custom Timer`
  String get setCustomTimer {
    return Intl.message(
      'Set Custom Timer',
      name: 'setCustomTimer',
      desc: '',
      args: [],
    );
  }

  /// `Set Timer`
  String get setTimer {
    return Intl.message('Set Timer', name: 'setTimer', desc: '', args: []);
  }

  /// `Set Time`
  String get setTime {
    return Intl.message('Set Time', name: 'setTime', desc: '', args: []);
  }

  /// `Set`
  String get set {
    return Intl.message('Set', name: 'set', desc: '', args: []);
  }

  /// `Cancel`
  String get cancel {
    return Intl.message('Cancel', name: 'cancel', desc: '', args: []);
  }

  /// `Remaining Time: {time}h {minutes}m`
  String remainingTime(Object time, Object minutes) {
    return Intl.message(
      'Remaining Time: ${time}h ${minutes}m',
      name: 'remainingTime',
      desc: '',
      args: [time, minutes],
    );
  }

  /// `{options} H`
  String timerOptions(int options) {
    return Intl.message(
      '$options H',
      name: 'timerOptions',
      desc: 'Timer options in hours',
      args: [options],
    );
  }

  /// `Smart Rules`
  String get smartRules {
    return Intl.message('Smart Rules', name: 'smartRules', desc: '', args: []);
  }

  /// `Threshold`
  String get Threshold {
    return Intl.message('Threshold', name: 'Threshold', desc: '', args: []);
  }

  /// `AC starts at {startTemp}°, stops at {stopTemp}°`
  String ThresholdDescription(int startTemp, int stopTemp) {
    return Intl.message(
      'AC starts at $startTemp°, stops at $stopTemp°',
      name: 'ThresholdDescription',
      desc: 'Description for AC threshold rule',
      args: [startTemp, stopTemp],
    );
  }

  /// `Active Hours`
  String get activeHours {
    return Intl.message(
      'Active Hours',
      name: 'activeHours',
      desc: '',
      args: [],
    );
  }

  /// `Start:`
  String get starts {
    return Intl.message('Start:', name: 'starts', desc: '', args: []);
  }

  /// `End:`
  String get ends {
    return Intl.message('End:', name: 'ends', desc: '', args: []);
  }

  /// `Control Type`
  String get controlType {
    return Intl.message(
      'Control Type',
      name: 'controlType',
      desc: '',
      args: [],
    );
  }

  /// `Auto Mode`
  String get autoMode {
    return Intl.message('Auto Mode', name: 'autoMode', desc: '', args: []);
  }

  /// `Target`
  String get target {
    return Intl.message('Target', name: 'target', desc: '', args: []);
  }

  /// `Running`
  String get running {
    return Intl.message('Running', name: 'running', desc: '', args: []);
  }

  /// `Current Temp {temp}°`
  String currentTemp(Object temp) {
    return Intl.message(
      'Current Temp $temp°',
      name: 'currentTemp',
      desc: '',
      args: [temp],
    );
  }

  /// `Temp Performance`
  String get tempPerformance {
    return Intl.message(
      'Temp Performance',
      name: 'tempPerformance',
      desc: '',
      args: [],
    );
  }

  /// `Air Conditioner Usage`
  String get AirConditionerUsage {
    return Intl.message(
      'Air Conditioner Usage',
      name: 'AirConditionerUsage',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settingsTitle {
    return Intl.message('Settings', name: 'settingsTitle', desc: '', args: []);
  }

  /// `Account & Security`
  String get settingsAccountAndSecurity {
    return Intl.message(
      'Account & Security',
      name: 'settingsAccountAndSecurity',
      desc: '',
      args: [],
    );
  }

  /// `Notifications & Alerts`
  String get settingsNotificationsAndAlerts {
    return Intl.message(
      'Notifications & Alerts',
      name: 'settingsNotificationsAndAlerts',
      desc: '',
      args: [],
    );
  }

  /// `Theme Mode`
  String get settingsThemeMode {
    return Intl.message(
      'Theme Mode',
      name: 'settingsThemeMode',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get settingsLanguage {
    return Intl.message(
      'Language',
      name: 'settingsLanguage',
      desc: '',
      args: [],
    );
  }

  /// `About & Support`
  String get settingsAboutAndSupport {
    return Intl.message(
      'About & Support',
      name: 'settingsAboutAndSupport',
      desc: '',
      args: [],
    );
  }

  /// `Log Out`
  String get settingsLogOut {
    return Intl.message('Log Out', name: 'settingsLogOut', desc: '', args: []);
  }

  /// `Light`
  String get themeModeLight {
    return Intl.message('Light', name: 'themeModeLight', desc: '', args: []);
  }

  /// `Dark`
  String get themeModeDark {
    return Intl.message('Dark', name: 'themeModeDark', desc: '', args: []);
  }

  /// `System`
  String get themeModeSystem {
    return Intl.message('System', name: 'themeModeSystem', desc: '', args: []);
  }

  /// `English`
  String get languageEnglish {
    return Intl.message('English', name: 'languageEnglish', desc: '', args: []);
  }

  /// `Arabic`
  String get languageArabic {
    return Intl.message('Arabic', name: 'languageArabic', desc: '', args: []);
  }

  /// `Version`
  String get settingsVersion {
    return Intl.message('Version', name: 'settingsVersion', desc: '', args: []);
  }

  /// `Profile`
  String get settingsProfile {
    return Intl.message('Profile', name: 'settingsProfile', desc: '', args: []);
  }

  /// `Edit Profile`
  String get editProfile {
    return Intl.message(
      'Edit Profile',
      name: 'editProfile',
      desc: '',
      args: [],
    );
  }

  /// `Save Changes`
  String get saveChanges {
    return Intl.message(
      'Save Changes',
      name: 'saveChanges',
      desc: '',
      args: [],
    );
  }

  /// `Change Password`
  String get settingsChangePassword {
    return Intl.message(
      'Change Password',
      name: 'settingsChangePassword',
      desc: '',
      args: [],
    );
  }

  /// `Delete Account`
  String get settingsDeleteAccount {
    return Intl.message(
      'Delete Account',
      name: 'settingsDeleteAccount',
      desc: '',
      args: [],
    );
  }

  /// `Push Notifications`
  String get settingsPushNotifications {
    return Intl.message(
      'Push Notifications',
      name: 'settingsPushNotifications',
      desc: '',
      args: [],
    );
  }

  /// `Critical Alerts`
  String get SettingsCriticalAlerts {
    return Intl.message(
      'Critical Alerts',
      name: 'SettingsCriticalAlerts',
      desc: '',
      args: [],
    );
  }

  /// `Receive alerts for critical system events`
  String get settingsCriticalAlertsDescription {
    return Intl.message(
      'Receive alerts for critical system events',
      name: 'settingsCriticalAlertsDescription',
      desc: '',
      args: [],
    );
  }

  /// `Warning Alerts`
  String get settingsWarningAlerts {
    return Intl.message(
      'Warning Alerts',
      name: 'settingsWarningAlerts',
      desc: '',
      args: [],
    );
  }

  /// `Receive alerts for warning-level events`
  String get settingsWarningAlertsDescription {
    return Intl.message(
      'Receive alerts for warning-level events',
      name: 'settingsWarningAlertsDescription',
      desc: '',
      args: [],
    );
  }

  /// `Info Logs`
  String get settingsInfoLogs {
    return Intl.message(
      'Info Logs',
      name: 'settingsInfoLogs',
      desc: '',
      args: [],
    );
  }

  /// `Receive informational logs and updates`
  String get settingsInfoLogsDescription {
    return Intl.message(
      'Receive informational logs and updates',
      name: 'settingsInfoLogsDescription',
      desc: '',
      args: [],
    );
  }

  /// `is required`
  String get isRequired {
    return Intl.message('is required', name: 'isRequired', desc: '', args: []);
  }

  /// `Current Password`
  String get currentPassword {
    return Intl.message(
      'Current Password',
      name: 'currentPassword',
      desc: '',
      args: [],
    );
  }

  /// `Create New Password`
  String get CreateNewPassword {
    return Intl.message(
      'Create New Password',
      name: 'CreateNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `New Password`
  String get NewPassword {
    return Intl.message(
      'New Password',
      name: 'NewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Confirm New Password`
  String get confirmNewPassword {
    return Intl.message(
      'Confirm New Password',
      name: 'confirmNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email address to recover your password`
  String get enterYourEmail {
    return Intl.message(
      'Enter your email address to recover your password',
      name: 'enterYourEmail',
      desc: '',
      args: [],
    );
  }

  /// `Send OTP`
  String get sendOTP {
    return Intl.message('Send OTP', name: 'sendOTP', desc: '', args: []);
  }

  /// `Verify Code`
  String get verifyCode {
    return Intl.message('Verify Code', name: 'verifyCode', desc: '', args: []);
  }

  /// `Please enter the OTP sent to your email {email}`
  String pleaseEnterTheOTP(String email) {
    return Intl.message(
      'Please enter the OTP sent to your email $email',
      name: 'pleaseEnterTheOTP',
      desc: 'Prompt to enter OTP sent to email',
      args: [email],
    );
  }

  /// `Didn't receive an OTP?`
  String get didntReceiveOTP {
    return Intl.message(
      'Didn\'t receive an OTP?',
      name: 'didntReceiveOTP',
      desc: '',
      args: [],
    );
  }

  /// `Resend OTP`
  String get resendOTP {
    return Intl.message('Resend OTP', name: 'resendOTP', desc: '', args: []);
  }

  /// `Verify & Continue`
  String get verifyAndContinue {
    return Intl.message(
      'Verify & Continue',
      name: 'verifyAndContinue',
      desc: '',
      args: [],
    );
  }

  /// `Reset Password`
  String get resetPassword {
    return Intl.message(
      'Reset Password',
      name: 'resetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Mark as read`
  String get markAsRead {
    return Intl.message('Mark as read', name: 'markAsRead', desc: '', args: []);
  }

  /// `No recent activities.`
  String get noRecentActivities {
    return Intl.message(
      'No recent activities.',
      name: 'noRecentActivities',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message('Skip', name: 'skip', desc: '', args: []);
  }

  /// `Smart Control`
  String get smartControl {
    return Intl.message(
      'Smart Control',
      name: 'smartControl',
      desc: '',
      args: [],
    );
  }

  /// `Real-time Monitoring`
  String get realtimeMonitoring {
    return Intl.message(
      'Real-time Monitoring',
      name: 'realtimeMonitoring',
      desc: '',
      args: [],
    );
  }

  /// `Instant Alerts`
  String get instantAlerts {
    return Intl.message(
      'Instant Alerts',
      name: 'instantAlerts',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get getStarted {
    return Intl.message('Get Started', name: 'getStarted', desc: '', args: []);
  }

  /// `Live Devices`
  String get liveDevices {
    return Intl.message(
      'Live Devices',
      name: 'liveDevices',
      desc: '',
      args: [],
    );
  }

  /// `Filter Your Fleet`
  String get filterYourFleet {
    return Intl.message(
      'Filter Your Fleet',
      name: 'filterYourFleet',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to Fleexa`
  String get welcomeToFleexa {
    return Intl.message(
      'Welcome to Fleexa',
      name: 'welcomeToFleexa',
      desc: '',
      args: [],
    );
  }

  /// `System Notifications`
  String get systemNotifications {
    return Intl.message(
      'System Notifications',
      name: 'systemNotifications',
      desc: '',
      args: [],
    );
  }

  /// `You are all caught up!`
  String get youAreAllCaughtUp {
    return Intl.message(
      'You are all caught up!',
      name: 'youAreAllCaughtUp',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the '5' key

  /// `System Analytics`
  String get systemAnalytics {
    return Intl.message(
      'System Analytics',
      name: 'systemAnalytics',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Data Collection`
  String get dataCollection {
    return Intl.message(
      'Data Collection',
      name: 'dataCollection',
      desc: '',
      args: [],
    );
  }

  /// `Usage Purpose`
  String get usagePurpose {
    return Intl.message(
      'Usage Purpose',
      name: 'usagePurpose',
      desc: '',
      args: [],
    );
  }

  /// `Your Control`
  String get yourControl {
    return Intl.message(
      'Your Control',
      name: 'yourControl',
      desc: '',
      args: [],
    );
  }

  /// `Contact Support`
  String get contactSupport {
    return Intl.message(
      'Contact Support',
      name: 'contactSupport',
      desc: '',
      args: [],
    );
  }

  /// `Email Us`
  String get emailUs {
    return Intl.message('Email Us', name: 'emailUs', desc: '', args: []);
  }

  /// `What to Include`
  String get whatToInclude {
    return Intl.message(
      'What to Include',
      name: 'whatToInclude',
      desc: '',
      args: [],
    );
  }

  /// `Response Times`
  String get responseTimes {
    return Intl.message(
      'Response Times',
      name: 'responseTimes',
      desc: '',
      args: [],
    );
  }

  /// `Report a Problem`
  String get reportAProblem {
    return Intl.message(
      'Report a Problem',
      name: 'reportAProblem',
      desc: '',
      args: [],
    );
  }

  /// `Pre-check Steps`
  String get precheckSteps {
    return Intl.message(
      'Pre-check Steps',
      name: 'precheckSteps',
      desc: '',
      args: [],
    );
  }

  /// `Be Specific`
  String get beSpecific {
    return Intl.message('Be Specific', name: 'beSpecific', desc: '', args: []);
  }

  /// `Urgent Issues`
  String get urgentIssues {
    return Intl.message(
      'Urgent Issues',
      name: 'urgentIssues',
      desc: '',
      args: [],
    );
  }

  /// `About & Support`
  String get aboutSupport {
    return Intl.message(
      'About & Support',
      name: 'aboutSupport',
      desc: '',
      args: [],
    );
  }

  /// `How can we help?`
  String get howCanWeHelp {
    return Intl.message(
      'How can we help?',
      name: 'howCanWeHelp',
      desc: '',
      args: [],
    );
  }

  /// `fleexa.app@gmail.com`
  String get supportfleexaapp {
    return Intl.message(
      'fleexa.app@gmail.com',
      name: 'supportfleexaapp',
      desc: '',
      args: [],
    );
  }

  /// `Delete Account`
  String get deleteAccount {
    return Intl.message(
      'Delete Account',
      name: 'deleteAccount',
      desc: '',
      args: [],
    );
  }

  /// `Fleexa`
  String get fleexa {
    return Intl.message('Fleexa', name: 'fleexa', desc: '', args: []);
  }

  /// `Smart Home • Version 1.0.0`
  String get smartHomeVersion100 {
    return Intl.message(
      'Smart Home • Version 1.0.0',
      name: 'smartHomeVersion100',
      desc: '',
      args: [],
    );
  }

  /// `Run your IoT simulation without a single physical board.`
  String get runYourIotSimulationWithout {
    return Intl.message(
      'Run your IoT simulation without a single physical board.',
      name: 'runYourIotSimulationWithout',
      desc: '',
      args: [],
    );
  }

  /// `Track your sensor data instantly from anywhere.`
  String get trackYourSensorDataInstantly {
    return Intl.message(
      'Track your sensor data instantly from anywhere.',
      name: 'trackYourSensorDataInstantly',
      desc: '',
      args: [],
    );
  }

  /// `Get notified immediately when thresholds are met.`
  String get getNotifiedImmediatelyWhenThresholds {
    return Intl.message(
      'Get notified immediately when thresholds are met.',
      name: 'getNotifiedImmediatelyWhenThresholds',
      desc: '',
      args: [],
    );
  }

  /// `We are committed to ensuring your smart home experience is secure. We only use the information strictly necessary to operate your devices.`
  String get weAreCommittedToEnsuring {
    return Intl.message(
      'We are committed to ensuring your smart home experience is secure. We only use the information strictly necessary to operate your devices.',
      name: 'weAreCommittedToEnsuring',
      desc: '',
      args: [],
    );
  }

  /// `We collect minimal info needed for the app.`
  String get weCollectMinimalInfoNeeded {
    return Intl.message(
      'We collect minimal info needed for the app.',
      name: 'weCollectMinimalInfoNeeded',
      desc: '',
      args: [],
    );
  }

  /// `Your data provides stable, live features.`
  String get yourDataProvidesStableLive {
    return Intl.message(
      'Your data provides stable, live features.',
      name: 'yourDataProvidesStableLive',
      desc: '',
      args: [],
    );
  }

  /// `You manage your settings and account.`
  String get youManageYourSettingsAnd {
    return Intl.message(
      'You manage your settings and account.',
      name: 'youManageYourSettingsAnd',
      desc: '',
      args: [],
    );
  }

  /// `Need assistance with your app or devices? Our dedicated support team is here to help you resolve issues quickly.`
  String get needAssistanceWithYourApp {
    return Intl.message(
      'Need assistance with your app or devices? Our dedicated support team is here to help you resolve issues quickly.',
      name: 'needAssistanceWithYourApp',
      desc: '',
      args: [],
    );
  }

  /// `Reach out directly at fleexa.app@gmail.com.`
  String get reachOutDirectlyAtSupportfleexaapp {
    return Intl.message(
      'Reach out directly at fleexa.app@gmail.com.',
      name: 'reachOutDirectlyAtSupportfleexaapp',
      desc: '',
      args: [],
    );
  }

  /// `Provide details to speed up resolution.`
  String get provideDetailsToSpeedUp {
    return Intl.message(
      'Provide details to speed up resolution.',
      name: 'provideDetailsToSpeedUp',
      desc: '',
      args: [],
    );
  }

  /// `We aim to reply within 24 to 48 hours.`
  String get weAimToReplyWithin {
    return Intl.message(
      'We aim to reply within 24 to 48 hours.',
      name: 'weAimToReplyWithin',
      desc: '',
      args: [],
    );
  }

  /// `Help us improve Fleexa! Providing clear steps allows our engineering team to fix bugs efficiently.`
  String get helpUsImproveFleexaProviding {
    return Intl.message(
      'Help us improve Fleexa! Providing clear steps allows our engineering team to fix bugs efficiently.',
      name: 'helpUsImproveFleexaProviding',
      desc: '',
      args: [],
    );
  }

  /// `Verify basics before sending a report.`
  String get verifyBasicsBeforeSendingA {
    return Intl.message(
      'Verify basics before sending a report.',
      name: 'verifyBasicsBeforeSendingA',
      desc: '',
      args: [],
    );
  }

  /// `Clear reproduction steps fix bugs faster.`
  String get clearReproductionStepsFixBugs {
    return Intl.message(
      'Clear reproduction steps fix bugs faster.',
      name: 'clearReproductionStepsFixBugs',
      desc: '',
      args: [],
    );
  }

  /// `Security and hardware drops are high priority.`
  String get securityAndHardwareDropsAre {
    return Intl.message(
      'Security and hardware drops are high priority.',
      name: 'securityAndHardwareDropsAre',
      desc: '',
      args: [],
    );
  }

  /// `Enter your password to delete your account `
  String get enterYourPasswordToDelete {
    return Intl.message(
      'Enter your password to delete your account ',
      name: 'enterYourPasswordToDelete',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
