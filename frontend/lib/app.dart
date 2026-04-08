// lib/app.dart
//
// WHAT: Separating the root widget from main.dart makes testing easier.
// You can instantiate SmartHealthApp() in tests without calling main().
//
// This is a ConsumerWidget (not StatelessWidget) because it needs to
// watch the router provider — which itself watches auth state.
// When auth state changes (login/logout), the router automatically
// redirects. No manual navigation code anywhere.

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/router/app_router.dart';
import 'core/theme/app_theme.dart';

class SmartHealthApp extends ConsumerWidget {
  const SmartHealthApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // GoRouter instance — rebuilds when auth state changes
    final router = ref.watch(appRouterProvider);

    return MaterialApp.router(
      // ── Identity ──────────────────────────────────────────────
      title: 'Smart Health Care',
      debugShowCheckedModeBanner: false,

      // ── Theme ─────────────────────────────────────────────────
      theme: AppTheme.light,
      // darkTheme: AppTheme.dark, // Phase 2
      themeMode: ThemeMode.light,

      // ── Navigation ────────────────────────────────────────────
      // routerConfig replaces home:, routes:, and onGenerateRoute:
      // GoRouter handles everything declaratively
      routerConfig: router,
    );
  }
}