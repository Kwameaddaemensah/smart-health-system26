// lib/core/constants/app_text_styles.dart
//
// WHAT: Two typefaces, defined once.
// Inter   → all UI chrome (labels, buttons, nav, metadata)
// Merriweather → health content (AI responses, records, advisory text)
//
// The serif in health content is intentional — it creates psychological
// separation from the "app UI" feeling. When Ama reads AI guidance in
// Merriweather it feels like advice, not a notification.
//
// Usage: Text('Hello', style: AppTextStyles.headingLarge)
// Or via extension: context.textTheme.headlineLarge

import 'package:flutter/material.dart';
import 'app_colors.dart';

abstract final class AppTextStyles {
  // ── Font family constants ─────────────────────────────────────
  static const String _inter        = 'Inter';
  static const String _merriweather = 'Merriweather';

  // ── Display — hero moments only ───────────────────────────────
  // Used on: splash screen, onboarding headings
  static const TextStyle displayLarge = TextStyle(
    fontFamily: _inter,
    fontSize: 32,
    fontWeight: FontWeight.w500,
    letterSpacing: -0.5,
    height: 1.15,
    color: AppColors.grey900,
  );

  // ── Headings — Inter ─────────────────────────────────────────
  static const TextStyle headingXL = TextStyle(
    fontFamily: _inter,
    fontSize: 24,
    fontWeight: FontWeight.w500,
    letterSpacing: -0.3,
    height: 1.2,
    color: AppColors.grey900,
  );

  static const TextStyle headingLarge = TextStyle(
    fontFamily: _inter,
    fontSize: 20,
    fontWeight: FontWeight.w500,
    letterSpacing: -0.2,
    height: 1.25,
    color: AppColors.grey900,
  );

  static const TextStyle headingMedium = TextStyle(
    fontFamily: _inter,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 1.3,
    color: AppColors.grey900,
  );

  static const TextStyle headingSmall = TextStyle(
    fontFamily: _inter,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.35,
    color: AppColors.grey900,
  );

  // ── Body — Inter (UI elements) ───────────────────────────────
  static const TextStyle bodyLarge = TextStyle(
    fontFamily: _inter,
    fontSize: 15,
    fontWeight: FontWeight.w400,
    height: 1.6,
    color: AppColors.grey900,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontFamily: _inter,
    fontSize: 13,
    fontWeight: FontWeight.w400,
    height: 1.55,
    color: AppColors.grey900,
  );

  static const TextStyle bodySmall = TextStyle(
    fontFamily: _inter,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.5,
    color: AppColors.grey600,
  );

  // ── Labels & metadata ────────────────────────────────────────
  static const TextStyle labelLarge = TextStyle(
    fontFamily: _inter,
    fontSize: 13,
    fontWeight: FontWeight.w500,
    height: 1.3,
    color: AppColors.grey900,
  );

  static const TextStyle labelMedium = TextStyle(
    fontFamily: _inter,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 1.3,
    color: AppColors.grey700,
  );

  static const TextStyle labelSmall = TextStyle(
    fontFamily: _inter,
    fontSize: 11,
    fontWeight: FontWeight.w400,
    height: 1.3,
    color: AppColors.grey600,
  );

  // ── Overline — section labels ─────────────────────────────────
  static const TextStyle overline = TextStyle(
    fontFamily: _inter,
    fontSize: 10,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.7,
    height: 1.2,
    color: AppColors.grey400,
  );

  // ── Buttons ──────────────────────────────────────────────────
  static const TextStyle buttonLarge = TextStyle(
    fontFamily: _inter,
    fontSize: 15,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
    height: 1.2,
  );

  static const TextStyle buttonMedium = TextStyle(
    fontFamily: _inter,
    fontSize: 13,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
    height: 1.2,
  );

  static const TextStyle buttonSmall = TextStyle(
    fontFamily: _inter,
    fontSize: 11,
    fontWeight: FontWeight.w500,
    height: 1.2,
  );

  // ── Health content — Merriweather ────────────────────────────
  // For: AI chat responses, medical record text, advisory disclaimers
  static const TextStyle healthBody = TextStyle(
    fontFamily: _merriweather,
    fontSize: 15,
    fontWeight: FontWeight.w400,
    height: 1.75, // generous line height for reading comfort
    color: AppColors.grey900,
  );

  static const TextStyle healthBodySmall = TextStyle(
    fontFamily: _merriweather,
    fontSize: 13,
    fontWeight: FontWeight.w400,
    height: 1.65,
    color: AppColors.grey700,
  );

  static const TextStyle healthDisclaimer = TextStyle(
    fontFamily: _merriweather,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.italic,
    height: 1.6,
    color: AppColors.grey600,
  );
}