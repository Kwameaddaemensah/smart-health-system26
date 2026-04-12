// WHAT: Hive for offline cache:
// Hive is a pure-Dart key-value store that's significantly faster than
// SQLite for simple object caching. We use it for:
//   - Appointment list (offline-first, 5-min TTL)
//   - Doctor list (offline-first, 30-min TTL)
//   - Facility list (GPS-based, 30-min TTL)
//
// WHY encrypted:
// Appointment data (doctor name, date/time, reason) is PHI.
// We derive the Hive encryption key from a random value stored in
// SecureStorage — so even if someone extracts the Hive file from
// the device filesystem, they can't read it without the Keystore key.
//
// Medical records are NEVER cached in Hive — fetched fresh every session.

import 'dart:math';
import 'dart:typed_data';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract final class CacheManager {
  // Box names - one box per domain
  static const _boxAppointment = 'sh_appointments';
  static const _boxDoctors = 'sh_doctors';
  static const _boxFacilities = 'sh_facilities';

  // Secure storage key for the Hive encryption key
  static const _kHiveKey = 'sh_hive_encryptions_key';

  static late Box<String> _appointments;
  static late Box<String> _doctors;
  static late Box<String> _facilities;


  static Future<void> init() async {
    await Hive.initFlutter();

    // Get or generate the encryption key
    final cipher = HiveAesCipher(await _getOrCreateEncryptionKey());

     // Open all boxes with encryption
     _appointments = await Hive.openBox<String>(
      _boxAppointment,
      encryptionCipher: cipher,
     );

     _doctors = await Hive.openBox<String>(
      _boxDoctors,
      encryptionCipher: cipher,
     );

     _facilities = await Hive.openBox<String>(
      _boxFacilities,
      encryptionCipher: cipher,
     );
  }

  // ── Encryption key management ─────────────────────────────────
  // Key lives in the OS Keystore — not the Hive file itself
  static Future<Uint8List> _getOrCreateEncryptionKey() async {
    const storage = FlutterSecureStorage(
      aOptions: AndroidOptions(encryptedSharedPreferences: true),
    );

    final existing = await storage.read(key: _kHiveKey);

    if(existing != null) {
      // Parse the stored comma-separated byte list
      return Uint8List.fromList(
        existing.split(',').map(int.parse).toList(),
      );
    }

    // First launch — generate a cryptographically random 32-byte key
    final key = Uint8List(32);
    final random = Random.secure();

    for(var i = 0; i < 32; i++) {
      key[i] = random.nextInt(256);
    }

    // Persisting it — next launch reads this instead of generating again
    await storage.write(
      key: _kHiveKey,
      value: key.join(',')
      );

      return key;
  }

  // ── Public accessors ──────────────────────────────────────────
  static Box<String> get appointments => _appointments;
  static Box<String> get doctors => _doctors;
  static Box<String> get facilities => _facilities;

  // ── Full cache clear (on logout) ──────────────────────────────
  // Clears all cached data when the user logs out.
  // The encryption key stays — it's tied to the device, not the user.
  static Future<void> clearAllCaches() async {
    await Future.wait([
      _appointments.clear(),
      _doctors.clear(),
      _facilities.clear(),
    ]);
  }
}