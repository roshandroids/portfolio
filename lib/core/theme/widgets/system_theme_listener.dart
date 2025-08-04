import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/core/theme/providers/theme_provider.dart';

/// Widget that listens to system theme changes and updates the theme provider
class SystemThemeListener extends ConsumerStatefulWidget {
  final Widget child;

  const SystemThemeListener({super.key, required this.child});

  @override
  ConsumerState<SystemThemeListener> createState() =>
      _SystemThemeListenerState();
}

class _SystemThemeListenerState extends ConsumerState<SystemThemeListener>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangePlatformBrightness() {
    super.didChangePlatformBrightness();

    // Get the current system brightness
    final brightness =
        WidgetsBinding.instance.platformDispatcher.platformBrightness;

    // Update the theme provider with the new system brightness
    ref.read(themeNotifierProvider.notifier).updateSystemTheme(brightness);
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
