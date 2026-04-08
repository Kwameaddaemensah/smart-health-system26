// lib/core/constants/app_strings.dart
//
// WHAT: All user-facing text in one place.
// - Changing "Sign in" to "Log in" = one line changed, not a search-and-replace
// - Easier for future localization (swap this file for translated versions)
// - No typos hiding in widget files

abstract final class AppStrings {
  // ── App identity ─────────────────────────────────────────────
  static const String appName     = 'Smart Health Care';
  static const String appTagline  = 'Your health, guided and secure.';

  // ── Auth ─────────────────────────────────────────────────────
  static const String signIn           = 'Sign in';
  static const String signUp           = 'Create account';
  static const String welcomeBack      = 'Welcome back';
  static const String createAccount    = 'Create your account';
  static const String signInSubtitle   = 'Sign in to continue';
  static const String createSubtitle   = 'Takes less than a minute.';
  static const String alreadyHaveAcct = 'Already have an account?';
  static const String dontHaveAcct    = "Don't have an account?";
  static const String forgotPassword  = 'Forgot password?';
  static const String skipForNow      = 'Skip for now';
  static const String getStarted      = 'Get started';
  static const String checkYourPhone  = 'Check your phone';
  static const String resendCode      = 'Resend code';

  // ── Role selection ───────────────────────────────────────────
  static const String whoAreYou         = 'Welcome — who are you?';
  static const String chooseRole        = 'Choose your role to set up your account.';
  static const String patientRole       = 'Patient';
  static const String patientRoleDesc   = 'Book doctors, check symptoms, and keep your records safe.';
  static const String doctorRole        = 'Doctor';
  static const String doctorRoleDesc    = 'Manage your schedule and access patient records securely.';
  static const String adminRole         = 'Administrator';
  static const String adminRoleDesc     = 'Verify doctors and manage the platform.';

  // ── Home ─────────────────────────────────────────────────────
  static const String goodMorning   = 'Good morning';
  static const String goodAfternoon = 'Good afternoon';
  static const String goodEvening   = 'Good evening';
  static const String howAreYou     = 'How are you feeling today?';
  static const String startSymptomCheck = 'Start symptom check →';

  // ── AI Chat ──────────────────────────────────────────────────
  static const String healthAssistant  = 'Health Assistant';
  static const String advisoryOnly     = 'Advisory only — not a diagnosis';
  static const String aiDisclaimer     = 'This is not a medical diagnosis. Always consult a qualified healthcare professional.';
  static const String chatPlaceholder  = 'Describe your symptom…';
  static const String emergencyBanner  = 'This sounds urgent. Please call 112 or go to the nearest emergency room now.';
  static const String bookFromChat     = 'Book a doctor for this →';

  // ── Errors ───────────────────────────────────────────────────
  static const String somethingWentWrong  = 'Something went wrong.';
  static const String noConnection        = 'No internet connection.';
  static const String tryAgain            = 'Try again';
  static const String sessionExpired      = 'Your session has expired. Please sign in again.';
  static const String connectionTimeout   = 'Connection timed out. Check your internet and try again.';

  // ── Microcopy ────────────────────────────────────────────────
  static const String takesOneMinute   = 'Takes less than a minute.';
  static const String passwordMinChars = 'Minimum 8 characters';
  static const String verified         = 'Verified';
  static const String noUpcomingAppts  = 'No upcoming appointments';
  static const String bookFirst        = 'Ready to book your first appointment?';
  static const String bookDoctor       = 'Book a doctor';
}