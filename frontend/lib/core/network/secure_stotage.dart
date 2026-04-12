// WHAT flutter_secure_storage:
// Tokens stored in SharedPreferences are readable in plain text
// on a rooted Android device. This SecureStorage uses the Android Keystore
// (hardware-backed AES encryption) and iOS Keychain.
// JWT tokens are credentials — they get the same protection as passwords.
//
// WHY a class, not top-level functions:
// Testable. In tests a MockSecureStorage is injected and never touch
// the real Keystore. Top-level functions easily cannot be mocked easily.

import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// ── Provider ──────────────────────────────────────────────────────────
// Singleton — one instance for the entire app
final secureStorageProvide = Provider<SecureStorage>(
  (ref) => SecureStorage(),
);

// ── Service ──────────────────────────────────────────────────────────
class SecureStorage {
  SecureStorage()
    : _storage = const FlutterSecureStorage(
      // Android: uses EncryptedSharedPreferences backed by Keystore
      aOptions: AndroidOptions(
        encryptedSharedPreferences: true,
      ),
      // iOS: only accessible when device is unlocked (first_unlock)
      // first_unlock means background tasks can still read tokens
      iOptions: IOSOptions(
        accessibility: KeychainAccessibility.first_unlock,
      ),  
    );

    final FlutterSecureStorage _storage;

    // ── Storage keys ─────────────────────────────────────────────
    // Private constants — no magic strings anywhere else in the codebase
    static const _kAccessToken = 'sh_access_token';
    static const _kRefreshToken = 'sh_refresh_token';
    static const _kCachedUser = 'sh_cache_user';


  // ── Token operations ─────────────────────────────────────────
  Future<void> saveTokens({
    required String accessToken,
    required String refreshToken
  }) async {
    // Write both in parallel — faster than sequential awaits
    await Future.wait([
      _storage.write(key: _kAccessToken, value: accessToken),
      _storage.write(key: _kRefreshToken, value: refreshToken)
    ]);
  }

  Future<String?> getAccessToken() => _storage.read(key: _kAccessToken);
  Future<String?> getRefreshToken() => _storage.read(key: _kRefreshToken);

  Future<void> deleteTokens() async {
    await Future.wait([
      _storage.delete(key: _kAccessToken),
      _storage.delete(key: _kRefreshToken)
    ]);
  }

   // ── User cache ───────────────────────────────────────────────
  // Cache a minimal User object so the app can restore the session
  // (show the correct home screen) without an API call on every launch.
  // Medical records are NEVER cached here — only identity info.
  Future<void> saveUser(Map<String, dynamic> userJson) async {
    await _storage.write(
      key: _kCachedUser,
      value: jsonEncode(userJson)
      );
  }

  Future<Map<String, dynamic>?> getCachedUser() async {
    final raw = await _storage.read(key: _kCachedUser);

    if (raw == null) return null;

    try {
      return jsonDecode(raw) as Map<String, dynamic>;
    } catch (_) {
      // Corrupted cache — delete and force re-login
      await _storage.delete(key: _kCachedUser);
      return null;
    }
  }

  // ── Full clear ───────────────────────────────────────────────
  // Called on logout — removes EVERYTHING from secure storage
  Future<void> clearAll() => _storage.deleteAll();
}