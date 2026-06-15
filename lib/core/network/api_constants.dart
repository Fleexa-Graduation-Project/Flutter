enum AppEnvironment { mock, dev, prod }

class ApiConstants {
  static const AppEnvironment currentEnv = AppEnvironment.mock;

  static String get baseUrl {
    switch (currentEnv) {
      case AppEnvironment.mock:
        return 'https://a942c4cd-805c-44de-af59-f61d99e769ac.mock.pstmn.io/api/v1';
      case AppEnvironment.dev:
        return 'https://9qqg9f27h7.execute-api.us-east-1.amazonaws.com';
      case AppEnvironment.prod:
        return 'https://api.fleexa.com/api/v1';
    }
  }

  // AWS API Key (If DevOps requires it)
  static const String awsApiKey = 'YOUR_AWS_API_KEY_HERE';

  // System & Device Endpoints
  static const String systemOverview = "/api/v1/system/overview";
  static const String devices = "/api/v1/devices";
  static const String allAlerts = "/api/v1/alerts";
  static String deviceDetails(String id) => "/api/v1/devices/$id";
  static String deviceTelemetry(String id) => "/api/v1/devices/$id/telemetry";
  static String deviceAlerts(String id) => "/api/v1/devices/$id/alerts";
  static String deviceCommands(String id) => "/api/v1/devices/$id/commands";

  // Authentication Endpoints
  static const String signIn = "/api/v1/auth/signin";
  static const String signUp = "/api/v1/auth/signup";
  static const String forgotPassword = "/api/v1/auth/forgot-password";
  static const String resetPassword = "/api/v1/auth/reset-password";
  static const String changePassword = "/api/v1/auth/change-password";
  static const String profile = "/api/v1/auth/profile";

  // User Preferences Endpoint
  static const String userPreferences = "/api/v1/users/preferences";
}
