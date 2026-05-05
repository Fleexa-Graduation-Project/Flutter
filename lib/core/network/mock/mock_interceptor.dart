import 'dart:convert';
import 'package:dio/dio.dart';
import 'mock_data.dart';

class MockInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // بنعمل تأخير بسيط عشان نحاكي سرعة النت الحقيقية ويفضل الـ Loading شغال
    Future.delayed(const Duration(milliseconds: 600), () {
      final path = options.path;
      final query = options.queryParameters;

      try {
        // 1. System Overview
        if (path.contains('/system/overview')) {
          final period = query['period'] ?? '24h';
          final data =
              MockData.systemOverview[period] ?? MockData.systemOverview['24h'];
          return _resolveWithData(options, handler, data!);
        }

        // 7. All Alerts (Global)
        if (path.endsWith('/alerts') && !path.contains('/devices')) {
          return _resolveWithData(options, handler, MockData.allAlerts);
        }

        // Handle Device Specific Routes
        if (path.contains('/devices')) {
          final segments = path.split('/');
          final devicesIndex = segments.indexOf('devices');

          // 2. All Devices List (No specific ID attached)
          if (segments.length <= devicesIndex + 1) {
            return _resolveWithData(options, handler, MockData.allDevices);
          }

          final deviceId = segments[devicesIndex + 1];

          // 4. Device Telemetry
          if (path.contains('/telemetry')) {
            final period = query['period'] ?? '24h';
            final key = '${deviceId}_$period';
            // لو الداتا مش موجودة للـ period ده، هنرجع داتا فاضية عشان الكود ميضربش
            final data = MockData.telemetry[key] ??
                '{"device_id": "$deviceId", "data": []}';
            return _resolveWithData(options, handler, data);
          }

          // 5. Device Alerts
          if (path.contains('/alerts')) {
            final data = MockData.deviceAlerts[deviceId] ?? '{"data": []}';
            return _resolveWithData(options, handler, data);
          }

          // 6. Device Commands
          if (path.contains('/commands') && options.method == 'POST') {
            return _resolveWithData(options, handler, MockData.commandSuccess,
                statusCode: 202);
          }

          // 3. Specific Device Details
          final data = MockData.deviceDetails[deviceId];
          if (data != null) {
            return _resolveWithData(options, handler, data);
          }
        }

        // لو الريكويست راح لمسار مش متعرف خالص
        return handler.reject(
          DioException(
            requestOptions: options,
            message: "Mock Route Not Found: $path",
            type: DioExceptionType.badResponse,
          ),
        );
      } catch (e) {
        return handler.reject(
          DioException(
            requestOptions: options,
            message: "Mock Parsing Error: $e",
          ),
        );
      }
    });
  }

  // فانكشن مساعدة بترجع الـ Response بشكل نظيف
  void _resolveWithData(RequestOptions options,
      RequestInterceptorHandler handler, String jsonData,
      {int statusCode = 200}) {
    handler.resolve(
      Response(
        requestOptions: options,
        statusCode: statusCode,
        data: jsonDecode(jsonData),
      ),
    );
  }
}
