// Minimal stub — full implementation (Hive encrypted boxes) comes later

import 'package:hive_flutter/hive_flutter.dart';

abstract final class CacheManager {
  static Future<void> init() async {
    await Hive.initFlutter();
    // Encrypted boxes opened here in the full implementation
  }
}