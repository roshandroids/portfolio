import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/core/theme/providers/theme_provider.dart';

/// Widget that provides theme switching functionality
class ThemeToggle extends ConsumerWidget {
  const ThemeToggle({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeState = ref.watch(themeNotifierProvider);
    final themeNotifier = ref.read(themeNotifierProvider.notifier);

    return PopupMenuButton<ThemeMode>(
      icon: Icon(
        _getThemeIcon(themeState.currentThemeMode),
        color: Theme.of(context).colorScheme.onSurface,
      ),
      onSelected: (mode) {
        switch (mode) {
          case ThemeMode.system:
            themeNotifier.switchToSystem();
            break;
          case ThemeMode.light:
            themeNotifier.switchToLight();
            break;
          case ThemeMode.dark:
            themeNotifier.switchToDark();
            break;
        }
      },
      itemBuilder: (context) => [
        PopupMenuItem<ThemeMode>(
          value: ThemeMode.system,
          child: Row(
            children: [
              Icon(
                Icons.brightness_auto,
                color: themeState.isSystem
                    ? Theme.of(context).colorScheme.primary
                    : null,
              ),
              const SizedBox(width: 8),
              Text(
                'System',
                style: TextStyle(
                  color: themeState.isSystem
                      ? Theme.of(context).colorScheme.primary
                      : null,
                ),
              ),
            ],
          ),
        ),
        PopupMenuItem<ThemeMode>(
          value: ThemeMode.light,
          child: Row(
            children: [
              Icon(
                Icons.brightness_7,
                color: themeState.isLight
                    ? Theme.of(context).colorScheme.primary
                    : null,
              ),
              const SizedBox(width: 8),
              Text(
                'Light',
                style: TextStyle(
                  color: themeState.isLight
                      ? Theme.of(context).colorScheme.primary
                      : null,
                ),
              ),
            ],
          ),
        ),
        PopupMenuItem<ThemeMode>(
          value: ThemeMode.dark,
          child: Row(
            children: [
              Icon(
                Icons.brightness_4,
                color: themeState.isDark
                    ? Theme.of(context).colorScheme.primary
                    : null,
              ),
              const SizedBox(width: 8),
              Text(
                'Dark',
                style: TextStyle(
                  color: themeState.isDark
                      ? Theme.of(context).colorScheme.primary
                      : null,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  IconData _getThemeIcon(ThemeMode mode) {
    switch (mode) {
      case ThemeMode.system:
        return Icons.brightness_auto;
      case ThemeMode.light:
        return Icons.brightness_7;
      case ThemeMode.dark:
        return Icons.brightness_4;
    }
  }
}

/// Simple theme toggle button that switches between light and dark
class SimpleThemeToggle extends ConsumerWidget {
  const SimpleThemeToggle({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeNotifier = ref.read(themeNotifierProvider.notifier);
    final isDark = ref.watch(isDarkModeProvider);

    return IconButton(
      onPressed: () => themeNotifier.toggleTheme(),
      icon: Icon(
        isDark ? Icons.brightness_7 : Icons.brightness_4,
        color: Theme.of(context).colorScheme.onSurface,
      ),
      tooltip: isDark ? 'Switch to Light' : 'Switch to Dark',
    );
  }
}
