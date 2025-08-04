import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/core/localization/locale_provider.dart';

class LanguageSelector extends ConsumerWidget {
  const LanguageSelector({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentLocale = ref.watch(localeProvider);
    final supportedLocales = ref.watch(supportedLocalesProvider);

    return PopupMenuButton<Locale>(
      icon: Icon(
        Icons.language,
        color: Theme.of(context).colorScheme.onSurface,
      ),
      onSelected: (locale) {
        ref.read(localeProvider.notifier).state = locale;
      },
      itemBuilder: (context) => supportedLocales.map((locale) {
        final isSelected = locale.languageCode == currentLocale.languageCode;
        return PopupMenuItem<Locale>(
          value: locale,
          child: Row(
            children: [
              Text(
                _getLanguageName(locale.languageCode),
                style: TextStyle(
                  color: isSelected
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.onSurface,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
              ),
              if (isSelected) ...[
                const SizedBox(width: 8),
                Icon(
                  Icons.check,
                  size: 16,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ],
            ],
          ),
        );
      }).toList(),
    );
  }

  String _getLanguageName(String languageCode) {
    switch (languageCode) {
      case 'en':
        return 'English';
      case 'fr':
        return 'Français';
      default:
        return languageCode.toUpperCase();
    }
  }
}
