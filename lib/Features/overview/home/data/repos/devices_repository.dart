import 'dart:convert';
import 'package:fleexa/Features/overview/home/data/models/device_model.dart';
import 'package:fleexa/core/network/api_constants.dart';
import 'package:fleexa/core/network/api_service.dart';

class DevicesRepository {
  final APiService aPiService;

  DevicesRepository(this.aPiService);

  Future<List<DeviceModel>> getAllDevices() async {
    try {
      final response = await aPiService.get(ApiConstants.devices);
      dynamic responseData = response.data;
      if (responseData is String) {
        responseData = jsonDecode(responseData);
      }
      final result = DeviceListResponse.fromJson(responseData);
      return result.data;
    } catch (e) {
      throw Exception('Failed to fetch devices: $e');
    }
  }
}
