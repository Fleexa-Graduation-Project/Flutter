import 'dart:convert';

import 'package:fleexa/core/network/api_service.dart';
import 'package:fleexa/core/network/api_constants.dart';
import 'package:fleexa/Features/devices/sensors/temperature/data/models/temp_telemetry_model.dart';
import 'package:fleexa/Features/devices/sensors/temperature/data/models/temp_model.dart';

class TempRepository {
  final APiService apiService;

  TempRepository(this.apiService);

  Future<TempModel> getTempSensorById(String id) async {
    final response = await apiService.get(
      ApiConstants.deviceDetails(id),
    );

    final data =
        response.data is String ? jsonDecode(response.data) : response.data;

    return TempModel.fromJson(data);
  }

  Future<TempTelemetryModel> getTelemetry(String id, String period) async {
    final response = await apiService.get(
      ApiConstants.deviceTelemetryWithPeriod(id, period),
    );

    final data =
        response.data is String ? jsonDecode(response.data) : response.data;

    return TempTelemetryModel.fromJson(data);
  }
}