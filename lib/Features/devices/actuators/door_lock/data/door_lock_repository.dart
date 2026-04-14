import 'package:fleexa/core/network/api_constants.dart';
import 'package:fleexa/core/network/api_service.dart';

abstract class DoorLockRepository {
  // [true] if locked, [false] if unlocked.
  Future<bool> getLockStatus();

  // [true] to lock, [false] to unlock.
  Future<bool> toggleLock({required bool lock});
}

class DoorLockRepositoryImpl implements DoorLockRepository {
  final APiService apiService;
  final String deviceId = 'door-lock-01';

  DoorLockRepositoryImpl(this.apiService);

  @override
  Future<bool> getLockStatus() async {
    try {
      final String endpoint = '${ApiConstants.devices}/$deviceId';
      final response = await apiService.get(endpoint);
      final payload = response.data['payload'];

      return payload['power_state'] == 'LOCKED';
    } catch (e) {
      throw Exception('Failed to get door lock status: $e');
    }
  }

  @override
  Future<bool> toggleLock({required bool lock}) async {
    try {
      final String endpoint = '${ApiConstants.devices}/$deviceId/commands';

      final Map<String, dynamic> requestBody = {
        "action": "SET_STATE",
        "parameters": {"power_state": lock ? "LOCKED" : "UNLOCKED"}
      };

      final response = await apiService.post(endpoint, data: requestBody);

      return response.statusCode == 202;
    } catch (e) {
      throw Exception('Failed to toggle door lock: $e');
    }
  }
}
