import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_state.freezed.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState({
    @Default(ThemeMode.system) ThemeMode themeMode,
    @Default(false) bool isDarkMode,
  }) = _ThemeState;

  const ThemeState._();

  /// Get the current theme mode
  ThemeMode get currentThemeMode => themeMode;

  /// Check if the app is in dark mode
  bool get isDark => isDarkMode;

  /// Check if the app is in light mode
  bool get isLight => !isDarkMode;

  /// Check if the app is following system theme
  bool get isSystem => themeMode == ThemeMode.system;

  /// Copy with new theme mode
  ThemeState copyWithThemeMode(ThemeMode mode) {
    return copyWith(themeMode: mode, isDarkMode: _getIsDarkMode(mode));
  }

  /// Copy with new dark mode state
  ThemeState copyWithDarkMode(bool isDark) {
    return copyWith(
      isDarkMode: isDark,
      // Preserve the current theme mode, don't change it to light/dark
    );
  }

  /// Toggle between light and dark mode
  ThemeState toggleTheme() {
    final newMode = isDark ? ThemeMode.light : ThemeMode.dark;
    return copyWithThemeMode(newMode);
  }

  /// Switch to system theme
  ThemeState switchToSystem() {
    return copyWithThemeMode(ThemeMode.system);
  }

  /// Switch to light theme
  ThemeState switchToLight() {
    return copyWithThemeMode(ThemeMode.light);
  }

  /// Switch to dark theme
  ThemeState switchToDark() {
    return copyWithThemeMode(ThemeMode.dark);
  }

  /// Helper method to determine if dark mode based on theme mode
  bool _getIsDarkMode(ThemeMode mode) {
    switch (mode) {
      case ThemeMode.light:
        return false;
      case ThemeMode.dark:
        return true;
      case ThemeMode.system:
        // This will be updated by the provider based on system brightness
        return isDarkMode;
    }
  }
}
