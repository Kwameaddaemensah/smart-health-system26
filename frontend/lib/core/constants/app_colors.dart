// lib/core/constants/app_colors.dart
//
// WHAT: Every color in the entire app is defined here once.
// If the brand color changes, you change one line — not 200 widget files.
// Rule: no Color() literal anywhere outside this file.

import 'package:flutter/material.dart';

abstract final class AppColors {
  // ── Brand primary — Vital Teal ────────────────────────────────
  // Use these for: patient CTAs, active states, links, success
  static const teal900 = Color(0xFF04342C);
  static const teal800 = Color(0xFF085041);
  static const teal700 = Color(0xFF0F6E56);
  static const teal600 = Color(0xFF1D9E75); // ← primary interactive
  static const teal400 = Color(0xFF5DCAA5);
  static const teal200 = Color(0xFF9FE1CB);
  static const teal50  = Color(0xFFE1F5EE); // ← tinted backgrounds

  // ── Deep Forest — authority & app bars ────────────────────────
  // Use for: app bars, splash screen, hero sections ONLY
  static const forest950 = Color(0xFF06241A);
  static const forest900 = Color(0xFF0A3D2E); // ← app bar background

  // ── Doctor role — Purple ──────────────────────────────────────
  static const purple800 = Color(0xFF3C3489);
  static const purple600 = Color(0xFF534AB7); // ← doctor primary
  static const purple400 = Color(0xFF7F77DD);
  static const purple200 = Color(0xFFAFA9EC);
  static const purple50  = Color(0xFFEEEDFE);

  // ── Admin role — Coral ────────────────────────────────────────
  static const coral800 = Color(0xFF712B13);
  static const coral600 = Color(0xFF993C1D);
  static const coral500 = Color(0xFFD85A30); // ← admin primary
  static const coral200 = Color(0xFFF0997B);
  static const coral50  = Color(0xFFFAECE7);

  // ── Semantic — Error ──────────────────────────────────────────
  // Use ONLY for: validation errors, danger actions, emergency alerts
  static const red800 = Color(0xFF791F1F);
  static const red600 = Color(0xFFA32D2D);
  static const red500 = Color(0xFFE24B4A); // ← error primary
  static const red200 = Color(0xFFF09595);
  static const red50  = Color(0xFFFCEBEB);

  // ── Semantic — Warning / Consent ──────────────────────────────
  // Use for: consent prompts, caution states, amber attention items
  static const amber800 = Color(0xFF633806);
  static const amber600 = Color(0xFF854F0B);
  static const amber500 = Color(0xFFBA7517); // ← warning primary
  static const amber200 = Color(0xFFEF9F27);
  static const amber50  = Color(0xFFFAEEDA);

  // ── Semantic — Success ────────────────────────────────────────
  static const green600 = Color(0xFF3B6D11);
  static const green500 = Color(0xFF639922);
  static const green50  = Color(0xFFEAF3DE);

  // ── Neutral — Warm Grey (never cold blue-grey) ────────────────
  // The warmth comes from the yellow undertone in the grey
  static const grey900 = Color(0xFF2C2C2A); // ← primary text
  static const grey700 = Color(0xFF444441); // ← secondary text
  static const grey600 = Color(0xFF5F5E5A); // ← hint text
  static const grey400 = Color(0xFF888780); // ← placeholder text
  static const grey300 = Color(0xFFB4B2A9); // ← disabled
  static const grey200 = Color(0xFFD3D1C7); // ← dividers
  static const grey100 = Color(0xFFE8E6DF); // ← borders
  static const grey50  = Color(0xFFF1EFE8); // ← page background

  // ── Overlay ───────────────────────────────────────────────────
  static const scrim = Color(0x73000000); // 45% black — modal overlays
}