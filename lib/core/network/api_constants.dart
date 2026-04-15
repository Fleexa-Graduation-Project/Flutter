class ApiConstants {
  static const String baseUrl =
      'https://1650c4e9-95fc-4d60-bba1-bb27851caaaf.mock.pstmn.io/api/v1';

  // System & Device Endpoints
  static const String systemOverview = "/system/overview";
  static const String devices = "/devices";
  static String deviceDetails(String id) => "/devices/$id";
  static String deviceTelemetry(String id) => "/devices/$id/telemetry";

  // Authentication Endpoints
  static const String login = "/auth/login";
  static const String register = "/auth/register";
  static const String verify = "/auth/verify";
}
