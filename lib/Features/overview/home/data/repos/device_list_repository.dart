import 'dart:convert';
import 'dart:developer';
import 'package:fleexa/Features/devices/shared/data/models/device_model.dart';
import 'package:fleexa/core/network/api_constants.dart';
import 'package:fleexa/core/network/api_service.dart';
import 'package:flutter/material.dart';

class DeviceListRepository {
  final APiService aPiService;

  DeviceListRepository(this.aPiService);

  Future<List<DeviceModel>> getAllDevices() async {
    try {
      final response = await aPiService.get(ApiConstants.devices);
      dynamic responseData = response.data;
      if (responseData is String) {
        responseData = jsonDecode(responseData);
      }
      final prettyJson =
          const JsonEncoder.withIndent('  ').convert(responseData);
      debugPrint("ALL DEVICES FROM SERVER:\n$prettyJson", wrapWidth: 1024);

      final result = DeviceListResponse.fromJson(responseData);
      List<DeviceModel> devices = result.data;

      devices.removeWhere((d) =>
          d.deviceId == 'door-locker-01' || d.deviceId == 'ac-curtain-01');

      try {
        final doorSensor = devices.firstWhere((d) => d.type == 'door-sensor');
        final doorLocker = devices.firstWhere((d) => d.type == 'door-actuator');

        doorLocker.payload['door_physical_state'] = doorSensor.operationalState;
        doorLocker.payload['sensor_id'] = doorSensor.deviceId;

        devices.removeWhere((d) => d.type == 'door-sensor');
      } catch (e) {
        log("something went wrong while merging door sensor and locker data.");
      }

      return devices;
    } catch (e) {
      throw Exception('Failed to fetch devices: $e');
    }
  }
}
