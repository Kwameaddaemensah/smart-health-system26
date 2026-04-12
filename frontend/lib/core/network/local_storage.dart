// WHAT SharedPreferences here (not SecureStorage):
// Onboarding flag, theme preference, cached role — these are non-sensitive data.
// All the Keystore/Keychain operations are slower than SharedPreferences. 
// Rule: if it would be embarrassing but not dangerous to read,
// it goes in LocalStorage. If it enables impersonation, SecureStorage.

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ── Provider ──────────────────────────────────────────────────────────
// FutureProvider because SharedPreferences.getInstance() is async
final localStorageProvider = FutureProvider<LocalStorage>(
  (ref) async {
    final prefs = await SharedPreferences.getInstance();
    return LocalStorage(prefs);
  }
);


// ── Service ───────────────────────────────────────────────────────────
class LocalStorage {
  const LocalStorage(this._prefs);
  final SharedPreferences _prefs;

  // ── Keys ─────────────────────────────────────────────────────
  static const _kOnboardingDone = 'sh_onboarding_done';
  static const _kUserRole = 'sh_user_role';
  static const _kThemeMode = 'sh_theme_mode';
  static const _kSelectedLang = 'sh_language';

  // ── Onboarding ───────────────────────────────────────────────
  // Set to true after the user completes or skips onboarding.
  // Never shown again — even after reinstall on same device if
  // SharedPreferences persists (some Android backup strategies restore it).

  bool get isOnboardingDone => _prefs.getBool(_kOnboardingDone) ?? false;

  Future<void> setOnboardingDone() => 
    _prefs.setBool(_kOnboardingDone, true);

  // ── User role ─────────────────────────────────────────────────
  // Cached role so the router can immediately show the correct shell
  // before the user object is fully loaded from SecureStorage.

  String? get cachedRole => _prefs.getString(_kUserRole);

  Future<void> saveRole(String role) =>
    _prefs.setString(_kUserRole, role);

  Future<void> clearRole() => _prefs.remove(_kUserRole);

  // ── Theme ─────────────────────────────────────────────────────
  String get themeMode => _prefs.getString(_kThemeMode) ?? 'light';

  Future<void> saveThemeMode(String mode) => 
    _prefs.setString(_kThemeMode, mode);


  // ── Language ──────────────────────────────────────────────────
  String get language => _prefs.getString(_kSelectedLang) ?? 'en';

  Future<void> saveLanguage(String lang) =>
    _prefs.setString(_kSelectedLang, lang); 


  // ── Full clear (on logout) ────────────────────────────────────
  // Note: Does not clear onboarding flag on logout.
  // The user already knows how the app works — don't show them
  // onboarding again just because they logged out.

  Future<void> clearUserData() async {
    await Future.wait([
      _prefs.remove(_kUserRole)
    ]);
  }
}