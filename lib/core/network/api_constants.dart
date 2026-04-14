class ApiConstants {
  static const String baseUrl = 'http://localhost:8080/api/v1';

  // System & Device Endpoints
  static const String systemOverview = "/system/overview";
  static const String devices = "/devices";

  // Authentication Endpoints
  static const String login = "/auth/login";
  static const String register = "/auth/register";
  static const String verify = "/auth/verify";
}
