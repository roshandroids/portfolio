import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/core/theme/app_theme.dart';
import 'package:portfolio/core/theme/providers/theme_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_provider.g.dart';

/// Provider that manages the current theme state
@riverpod
class ThemeNotifier extends _$ThemeNotifier {
  @override
  ThemeState build() {
    return const ThemeState();
  }

  /// Switch to system theme mode
  void switchToSystem() {
    // Get the current system brightness and update the state accordingly
    final brightness =
        WidgetsBinding.instance.platformDispatcher.platformBrightness;
    final isDark = brightness == Brightness.dark;

    state = state.copyWith(themeMode: ThemeMode.system, isDarkMode: isDark);
  }

  /// Switch to light theme mode
  void switchToLight() {
    state = state.switchToLight();
  }

  /// Switch to dark theme mode
  void switchToDark() {
    state = state.switchToDark();
  }

  /// Toggle between light and dark mode
  void toggleTheme() {
    state = state.toggleTheme();
  }

  /// Update the dark mode state based on system brightness
  void updateSystemTheme(Brightness brightness) {
    if (state.isSystem) {
      final isDark = brightness == Brightness.dark;
      state = state.copyWith(isDarkMode: isDark);
    } else {}
  }
}

/// Provider that provides the current theme data based on the theme state
@riverpod
ThemeData themeData(Ref ref) {
  final themeState = ref.watch(themeNotifierProvider);
  final isDark = themeState.isDark;

  return isDark ? AppTheme.darkTheme : AppTheme.lightTheme;
}

/// Provider that provides the current theme mode
@riverpod
ThemeMode themeMode(Ref ref) {
  final themeState = ref.watch(themeNotifierProvider);
  return themeState.currentThemeMode;
}

/// Provider that provides whether the app is in dark mode
@riverpod
bool isDarkMode(Ref ref) {
  final themeState = ref.watch(themeNotifierProvider);
  return themeState.isDark;
}

/// Provider that provides whether the app is following system theme
@riverpod
bool isSystemTheme(Ref ref) {
  final themeState = ref.watch(themeNotifierProvider);
  return themeState.isSystem;
}
