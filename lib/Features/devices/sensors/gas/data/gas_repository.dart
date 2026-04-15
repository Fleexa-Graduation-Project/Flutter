// import 'package:fleexa/core/network/api_service.dart';

// abstract class GasRepository {
//   Future<int> getCurrentGasLevel();
//   Future<List<Map<String, dynamic>>> getTelemetryHistory(String period);
//   Future<List<Map<String, dynamic>>> getAlerts();
// }

// class GasRepositoryImpl implements GasRepository {
//   final APiService apiService;
//   final String deviceId = 'gas-sensor-01';

//   GasRepositoryImpl(this.apiService);

//   @override
//   Future<List<Map<String, dynamic>>> getTelemetryHistory(String period) async {
//     try {
//       final String endpoint = '/devices/$deviceId/telemetry';
//       final response = await apiService.get(
//         endpoint,
//         queryParameters: {
//           'period': period,
//           'metric': 'gas_level',
//         },
//       );
//       final List<dynamic> rawData = response.data['data'];
//       return List<Map<String, dynamic>>.from(rawData);
//     } catch (e) {
//       throw Exception('Failed to load gas history chart: $e');
//     }
//   }

//   @override
//   Future<int> getCurrentGasLevel() async {
//     try {
//       final String endpoint = '/devices/$deviceId';
//       final response = await apiService.get(endpoint);
//       final int gasLevel = response.data['payload']['gas_level'];
//       return gasLevel;
//     } catch (e) {
//       throw Exception('Failed to load current gas level: $e');
//     }
//   }

//   @override
//   Future<List<Map<String, dynamic>>> getAlerts() async {
//     try {
//       final String endpoint = '/devices/$deviceId/alerts';
//       final response = await apiService.get(endpoint);
//       final List<dynamic> rawData = response.data['data'];
//       return List<Map<String, dynamic>>.from(rawData);
//     } catch (e) {
//       throw Exception('Failed to load gas alerts: $e');
//     }
//   }
// }
