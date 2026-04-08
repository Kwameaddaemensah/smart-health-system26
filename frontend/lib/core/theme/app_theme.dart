// lib/core/theme/app_theme.dart
//
// WHY: One ThemeData object that every widget in the app inherits from.
// When you define InputDecoration here, EVERY TextField gets it automatically.
// You never write borderRadius: BorderRadius.circular(10) in a widget file.
//
// Structure:
//   AppTheme.light → passed to MaterialApp.theme
//   AppTheme.dark  → passed to MaterialApp.darkTheme (future)

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../constants/app_colors.dart';
import '../constants/app_text_styles.dart';
import '../constants/app_sizes.dart';

abstract final class AppTheme {
  // ── Light theme (primary — v1 ships light only) ───────────────
  static ThemeData get light {
    const colorScheme = ColorScheme(
      brightness: Brightness.light,

      // Primary — teal (patient role, main CTAs)
      primary:          AppColors.teal600,
      onPrimary:        Colors.white,
      primaryContainer: AppColors.teal50,
      onPrimaryContainer: AppColors.teal800,

      // Secondary — deep forest (app bars, hero sections)
      secondary:          AppColors.forest900,
      onSecondary:        Colors.white,
      secondaryContainer: AppColors.teal50,
      onSecondaryContainer: AppColors.teal700,

      // Tertiary — purple (doctor role accents)
      tertiary:          AppColors.purple600,
      onTertiary:        Colors.white,
      tertiaryContainer: AppColors.purple50,
      onTertiaryContainer: AppColors.purple800,

      // Surface
      surface:           Colors.white,
      onSurface:         AppColors.grey900,
      surfaceContainerHighest: AppColors.grey50,

      // Error
      error:             AppColors.red500,
      onError:           Colors.white,
      errorContainer:    AppColors.red50,
      onErrorContainer:  AppColors.red600,

      // Outline
      outline:           AppColors.grey200,
      outlineVariant:    AppColors.grey100,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,

      // ── Scaffold ──────────────────────────────────────────────
      // Warm grey background — NOT pure white, NOT cold grey
      scaffoldBackgroundColor: AppColors.grey50,

      // ── App bar ───────────────────────────────────────────────
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.forest900,
        foregroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: false,
        titleTextStyle: AppTextStyles.headingMedium.copyWith(
          color: Colors.white,
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
          size: AppSizes.iconLg,
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),

      // ── Text ──────────────────────────────────────────────────
      textTheme: const TextTheme(
        displayLarge:  AppTextStyles.displayLarge,
        headlineLarge: AppTextStyles.headingXL,
        headlineMedium:AppTextStyles.headingLarge,
        headlineSmall: AppTextStyles.headingMedium,
        titleLarge:    AppTextStyles.headingMedium,
        titleMedium:   AppTextStyles.headingSmall,
        titleSmall:    AppTextStyles.labelLarge,
        bodyLarge:     AppTextStyles.bodyLarge,
        bodyMedium:    AppTextStyles.bodyMedium,
        bodySmall:     AppTextStyles.bodySmall,
        labelLarge:    AppTextStyles.labelLarge,
        labelMedium:   AppTextStyles.labelMedium,
        labelSmall:    AppTextStyles.labelSmall,
      ),

      // ── Elevated button ───────────────────────────────────────
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.teal600,
          foregroundColor: Colors.white,
          disabledBackgroundColor: AppColors.teal200,
          disabledForegroundColor: Colors.white70,
          minimumSize: const Size.fromHeight(AppSizes.buttonHeightMd),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSizes.radiusMd),
          ),
          textStyle: AppTextStyles.buttonMedium,
          elevation: 0,
        ),
      ),

      // ── Outlined button ───────────────────────────────────────
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.teal600,
          side: const BorderSide(color: AppColors.teal600, width: 1),
          minimumSize: const Size.fromHeight(AppSizes.buttonHeightMd),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSizes.radiusMd),
          ),
          textStyle: AppTextStyles.buttonMedium,
        ),
      ),

      // ── Text button ───────────────────────────────────────────
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.teal600,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          textStyle: AppTextStyles.buttonMedium,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSizes.radiusMd),
          ),
        ),
      ),

      // ── Input / TextField ─────────────────────────────────────
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 13,
        ),

        // Default border (no focus)
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.radiusMd),
          borderSide: const BorderSide(color: AppColors.grey200, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.radiusMd),
          borderSide: const BorderSide(color: AppColors.grey200, width: 1),
        ),
        // Teal glow on focus
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.radiusMd),
          borderSide: const BorderSide(color: AppColors.teal600, width: 1.5),
        ),
        // Red border on error
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.radiusMd),
          borderSide: const BorderSide(color: AppColors.red500, width: 1),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.radiusMd),
          borderSide: const BorderSide(color: AppColors.red500, width: 1.5),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.radiusMd),
          borderSide: const BorderSide(color: AppColors.grey100, width: 1),
        ),

        labelStyle: AppTextStyles.bodyMedium.copyWith(
          color: AppColors.grey600,
        ),
        hintStyle: AppTextStyles.bodyMedium.copyWith(
          color: AppColors.grey300,
        ),
        errorStyle: AppTextStyles.labelSmall.copyWith(
          color: AppColors.red500,
        ),
        helperStyle: AppTextStyles.labelSmall,

        // Force label above — never floating inside (health UX decision)
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),

      // ── Card ──────────────────────────────────────────────────
      cardTheme: CardTheme(
        color: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.radiusLg),
          side: const BorderSide(color: AppColors.grey100, width: 0.5),
        ),
        margin: EdgeInsets.zero,
      ),

      // ── Chip ──────────────────────────────────────────────────
      chipTheme: ChipThemeData(
        backgroundColor: Colors.white,
        selectedColor: AppColors.teal600,
        labelStyle: AppTextStyles.bodySmall,
        side: const BorderSide(color: AppColors.grey200),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.radiusFull),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      ),

      // ── Bottom navigation bar ─────────────────────────────────
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        selectedItemColor: AppColors.teal600,
        unselectedItemColor: AppColors.grey400,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        selectedLabelStyle: AppTextStyles.labelSmall.copyWith(
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelStyle: AppTextStyles.labelSmall,
      ),

      // ── Divider ───────────────────────────────────────────────
      dividerTheme: const DividerThemeData(
        color: AppColors.grey100,
        thickness: 0.5,
        space: 0,
      ),

      // ── Dialog / Bottom sheet ─────────────────────────────────
      dialogTheme: DialogTheme(
        backgroundColor: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.radiusXl),
        ),
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(AppSizes.radiusXxl),
          ),
        ),
        elevation: 0,
      ),

      // ── Progress indicator ────────────────────────────────────
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: AppColors.teal600,
      ),

      // ── Switch ────────────────────────────────────────────────
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return Colors.white;
          return AppColors.grey300;
        }),
        trackColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return AppColors.teal600;
          return AppColors.grey200;
        }),
      ),

      // ── Snackbar ──────────────────────────────────────────────
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.radiusMd),
        ),
        contentTextStyle: AppTextStyles.bodyMedium.copyWith(
          color: Colors.white,
        ),
      ),
    );
  }
}