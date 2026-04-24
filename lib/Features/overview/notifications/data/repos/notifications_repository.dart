import 'dart:convert';

import 'package:fleexa/Features/devices/shared/data/models/alert_model.dart';
import 'package:fleexa/core/network/api_constants.dart';
import 'package:fleexa/core/network/api_service.dart';

class NotificationsRepository {
  final APiService apiService;

  NotificationsRepository(this.apiService);

  Future<List<AlertModel>> getAllSystemAlerts() async {
    try {
      final response = await apiService.get(ApiConstants.allAlerts);

      dynamic responseData = response.data;
      if (responseData is String) responseData = jsonDecode(responseData);
      final List dataList = responseData['data'] ?? [];

      return dataList.map((item) => AlertModel.fromJson(item)).toList();
    } catch (e) {
      throw Exception('Failed to fetch system notifications: $e');
    }
  }
}
