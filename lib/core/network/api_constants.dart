enum AppEnvironment { mock, dev, prod }

class ApiConstants {
  static const AppEnvironment currentEnv = AppEnvironment.mock;

  static String get baseUrl {
    switch (currentEnv) {
      case AppEnvironment.mock:
        return 'https://1650c4e9-95fc-4d60-bba1-bb27851caaaf.mock.pstmn.io/api/v1';
      case AppEnvironment.dev:
        return 'https://23wqm3dp5c.execute-api.us-east-1.amazonaws.com/dev';
      case AppEnvironment.prod:
        return 'https://api.fleexa.com/api/v1';
    }
  }

  // AWS API Key (If DevOps requires it)
  static const String awsApiKey = 'YOUR_AWS_API_KEY_HERE';

  // System & Device Endpoints
  static const String systemOverview = "/system/overview";
  static const String devices = "/devices";
  static const String allAlerts = "/alerts";
  static String deviceDetails(String id) => "/devices/$id";
  static String deviceTelemetry(String id) => "/devices/$id/telemetry";
  static String deviceAlerts(String id) => "/devices/$id/alerts";
  static String deviceCommands(String id) => "/devices/$id/commands";

  // Authentication Endpoints
  static const String login = "/auth/login";
  static const String register = "/auth/register";
  static const String verify = "/auth/verify";
}
