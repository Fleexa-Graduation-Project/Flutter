import 'dart:convert';

import 'package:fleexa/Features/devices/shared/data/models/device_model.dart';
import 'package:fleexa/Features/devices/shared/data/models/telemetry_model.dart';
import 'package:fleexa/core/network/api_constants.dart';
import 'package:fleexa/core/network/api_service.dart';

class DeviceDetailsRepository {
  final APiService apiService;

  DeviceDetailsRepository(this.apiService);

  // 1. Fetches the Gauge Data & Live Status
  Future<DeviceModel> getDeviceDetails(String deviceId) async {
    try {
      final response =
          await apiService.get(ApiConstants.deviceDetails(deviceId));

      dynamic responseData = response.data;
      if (responseData is String) responseData = jsonDecode(responseData);

      return DeviceModel.fromJson(responseData);
    } catch (e) {
      throw Exception('Failed to fetch details for $deviceId: $e');
    }
  }

  // 2. Fetches the Insights Chart Data
  Future<TelemetryModel> getDeviceTelemetry(
      String deviceId, String period) async {
    try {
      final response = await apiService.get(
        ApiConstants.deviceTelemetry(deviceId),
        queryParameters: {
          "period": period
        },
      );

      dynamic responseData = response.data;
      if (responseData is String) responseData = jsonDecode(responseData);

      return TelemetryModel.fromJson(responseData);
    } catch (e) {
      throw Exception('Failed to fetch telemetry for $deviceId: $e');
    }
  }
}
