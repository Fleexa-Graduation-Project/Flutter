import 'package:fleexa/Features/overview/notifications/data/repos/notifications_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../core/errors/error_handler.dart';
import '../../../../devices/shared/data/models/ui_alert_model.dart';
import 'notifications_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationsCubit extends Cubit<NotificationsState> {
  final NotificationsRepository repository;

  NotificationsCubit(this.repository) : super(NotificationsInitial());

  List<UIAlertModel> _currentAlerts = [];

  String _generateAlertId(UIAlertModel alert) {
    return '${alert.deviceId}_${alert.dateTime.millisecondsSinceEpoch}';
  }

  Future<void> loadNotifications() async {
    emit(NotificationsLoading());
    try {
      final rawAlerts = await repository.getAllSystemAlerts();
      final prefs = await SharedPreferences.getInstance();

      // 1. Load our saved list of "read" IDs from the phone
      List<String> readAlertIds = prefs.getStringList('read_alerts') ?? [];

      // 2. Map the data and apply the "read" state
      _currentAlerts = rawAlerts.map((apiModel) {
        var uiModel = UIAlertModel.fromAlertModel(apiModel);

        if (readAlertIds.contains(_generateAlertId(uiModel))) {
          uiModel = uiModel.copyWith(isRead: true);
        }
        return uiModel;
      }).toList();

      // Get all the unique IDs that the API *just* sent us
      final currentApiIds =
          _currentAlerts.map((a) => _generateAlertId(a)).toSet();

      // Filter our saved list: Keep only the IDs that still exist in the 7-day window!
      readAlertIds =
          readAlertIds.where((id) => currentApiIds.contains(id)).toList();

      // Save the freshly cleaned list back to the phone
      await prefs.setStringList('read_alerts', readAlertIds);

      _emitGrouped();
    } catch (e) {
      final type = ErrorHandler.getErrorType(e);
      emit(NotificationsError(
          errorType: type, message: 'Failed to load notifications: $e'));
    }
  }

  void markAllRead() async {
    final prefs = await SharedPreferences.getInstance();
    final readAlertIds = prefs.getStringList('read_alerts') ?? [];

    // 1. Loop through all current alerts.
    // If it's unread, generate its ID and add it to our saved list!
    for (var alert in _currentAlerts) {
      if (!alert.isRead) {
        readAlertIds.add(_generateAlertId(alert));
      }
    }

    // 2. Save the massive new list back to the phone's storage
    await prefs.setStringList('read_alerts', readAlertIds);

    // 3. Update our UI state in memory so they all fade to 50% opacity
    _currentAlerts =
        _currentAlerts.map((alert) => alert.copyWith(isRead: true)).toList();

    // 4. Rebuild the screen
    _emitGrouped();
  }

  void markAsRead(UIAlertModel targetAlert) async {
    final prefs = await SharedPreferences.getInstance();
    final readAlertIds = prefs.getStringList('read_alerts') ?? [];

    // Save the new read ID to local storage
    readAlertIds.add(_generateAlertId(targetAlert));
    await prefs.setStringList('read_alerts', readAlertIds);

    // Update UI state
    _currentAlerts = _currentAlerts.map((alert) {
      if (alert.deviceId == targetAlert.deviceId &&
          alert.dateTime == targetAlert.dateTime) {
        return alert.copyWith(isRead: true);
      }
      return alert;
    }).toList();

    _emitGrouped();
  }

  void _emitGrouped() {
    final Map<String, List<UIAlertModel>> grouped = {
      'Today': [],
      'Yesterday': [],
      'Earlier': [],
    };

    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = today.subtract(const Duration(days: 1));

    for (var alert in _currentAlerts) {
      final alertDate = DateTime(
          alert.dateTime.year, alert.dateTime.month, alert.dateTime.day);

      if (alertDate == today) {
        grouped['Today']!.add(alert);
      } else if (alertDate == yesterday) {
        grouped['Yesterday']!.add(alert);
      } else {
        grouped['Earlier']!.add(alert);
      }
    }

    emit(NotificationsLoaded(grouped));
  }

  void clearData() {
    _currentAlerts = [];
    emit(NotificationsInitial());
  }
}
