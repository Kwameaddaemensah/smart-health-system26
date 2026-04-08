// lib/core/constants/app_spacing.dart
//
// WHAT: A 4px base grid. Every spacing value is a multiple of 4.
// This creates the visual rhythm that makes UI feel ordered and
// professional. Spacing that's "close enough" — 15px instead of 16px —
// is the fastest way to make an app look amateur.
//
// Usage: SizedBox(height: AppSpacing.md)
//        Padding(padding: EdgeInsets.all(AppSpacing.lg))

import 'package:flutter/material.dart';

abstract final class AppSpacing {
  // Base unit: 4px
  static const double xs   =  4.0;   // icon-to-label, tight pairs
  static const double sm   =  8.0;   // between related elements
  static const double md   = 12.0;   // card internal spacing
  static const double lg   = 16.0;   // standard card padding
  static const double xl   = 20.0;   // screen horizontal margin
  static const double xxl  = 24.0;   // between sections
  static const double xxxl = 32.0;   // screen top padding
  static const double huge = 48.0;   // empty state padding
  static const double epic = 64.0;   // bottom nav safe area

  // ── Common EdgeInsets shortcuts ───────────────────────────────
  static const screenPadding = EdgeInsetsDirectional.symmetric(
    horizontal: xl,
    vertical: lg,
  );

  static const cardPadding = EdgeInsetsDirectional.all(lg);

  static const listItemPadding = EdgeInsetsDirectional.symmetric(
    horizontal: lg,
    vertical: md,
  );
}