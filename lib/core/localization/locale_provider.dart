import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/core/localization/app_localizations.dart';

/// Provider for the current locale
final localeProvider = StateProvider<Locale>((ref) {
  return const Locale('en', ''); // Default to English
});

/// Provider for the app localizations
final appLocalizationsProvider = Provider<AppLocalizations>((ref) {
  final locale = ref.watch(localeProvider);
  return AppLocalizations(locale);
});

/// Provider for supported locales
final supportedLocalesProvider = Provider<List<Locale>>((ref) {
  return AppLocalizations.supportedLocales;
});

/// Provider for localization delegates
final localizationsDelegatesProvider =
    Provider<List<LocalizationsDelegate<dynamic>>>((ref) {
      return AppLocalizations.localizationsDelegates;
    });
