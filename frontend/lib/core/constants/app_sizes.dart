// lib/core/constants/app_sizes.dart
//
// WHAT: Touch targets, border radii, and component heights as constants.
// 44dp minimum touch target is a WCAG requirement — not optional.
// Consistency in border radii is what makes a design system feel coherent.

abstract final class AppSizes {
  // ── Touch targets (minimum 44dp — WCAG AA) ────────────────────
  static const double touchTargetMin   = 44.0;
  static const double buttonHeightLg   = 52.0;
  static const double buttonHeightMd   = 44.0;
  static const double buttonHeightSm   = 36.0;

  // ── Border radii ─────────────────────────────────────────────
  // Rule: always use these — never write BorderRadius.circular(11)
  static const double radiusSm  =  4.0;  // tags, chips (small)
  static const double radiusMd  =  8.0;  // inputs, small buttons
  static const double radiusLg  = 12.0;  // cards (most common)
  static const double radiusXl  = 16.0;  // modals, bottom sheets top
  static const double radiusXxl = 24.0;  // large bottom sheets
  static const double radiusFull = 999.0; // pills, full-round chips

  // ── Avatar sizes ─────────────────────────────────────────────
  static const double avatarSm  = 32.0;
  static const double avatarMd  = 44.0;
  static const double avatarLg  = 56.0;
  static const double avatarXl  = 80.0;

  // ── Icon sizes ───────────────────────────────────────────────
  static const double iconXs = 14.0;
  static const double iconSm = 16.0;
  static const double iconMd = 20.0; // in lists and cards
  static const double iconLg = 24.0; // in navigation
  static const double iconXl = 32.0; // in empty states

  // ── App bar ──────────────────────────────────────────────────
  static const double appBarHeight      = 56.0;
  static const double bottomNavHeight   = 64.0;
}