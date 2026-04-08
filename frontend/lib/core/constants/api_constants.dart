// lib/core/constants/api_constants.dart
//
// WHAT: Reads URLs from build-time environment variables.
// This means the same compiled app points to dev, staging, or production
// just by changing the build command. Zero code changes for deployment.
//
// Run with: flutter run --dart-define=API_URL=http://your-server/api/v1
// Default falls back to Android emulator localhost (10.0.2.2)

abstract final class ApiConstants {
  // ── Service base URLs ─────────────────────────────────────────
  // Django REST API
  static const String baseUrl = String.fromEnvironment(
    'API_URL',
    defaultValue: 'http://10.0.2.2:8000/api/v1',
  );

  // FastAPI AI microservice (separate service, different port)
  static const String aiBaseUrl = String.fromEnvironment(
    'AI_URL',
    defaultValue: 'http://10.0.2.2:8001',
  );

  // ── Timeouts ─────────────────────────────────────────────────
  // Generous for Ghana's mobile networks
  static const Duration connectTimeout = Duration(seconds: 20);
  static const Duration receiveTimeout = Duration(seconds: 45);
  static const Duration sendTimeout    = Duration(seconds: 20);

  // ── Auth endpoints ───────────────────────────────────────────
  static const String login          = '/auth/login/';
  static const String register       = '/auth/register/';
  static const String tokenRefresh   = '/auth/token/refresh/';
  static const String logout         = '/auth/logout/';
  static const String otpSend        = '/auth/otp/send/';
  static const String otpVerify      = '/auth/otp/verify/';

  // ── Patient endpoints ────────────────────────────────────────
  static const String doctors        = '/doctors/';
  static const String appointments   = '/appointments/';
  static const String records        = '/records/';
  static const String consent        = '/consent/';
  static const String facilities     = '/facilities/';
  static const String patientProfile = '/patients/me/';

  // ── Doctor endpoints ─────────────────────────────────────────
  static const String doctorProfile  = '/doctors/me/';
  static const String doctorSchedule = '/doctors/me/schedule/';
  static const String consentRequests= '/consent/requests/';

  // ── Admin endpoints ──────────────────────────────────────────
  static const String adminDoctors   = '/admin/doctors/';
  static const String adminUsers     = '/admin/users/';
  static const String auditLog       = '/admin/audit-logs/';

  // ── AI service endpoints (different base URL) ─────────────────
  static const String aiSymptoms     = '/ai/symptoms/stream';
  static const String aiScheduling   = '/ai/scheduling/';
  static const String aiFacilities   = '/ai/facilities/';
}