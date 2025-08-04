import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/core/localization/locale_provider.dart';
import 'package:portfolio/core/routes/router_provider.dart';
import 'package:portfolio/core/theme/providers/theme_provider.dart';
import 'package:portfolio/core/theme/widgets/system_theme_listener.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);
    final themeData = ref.watch(themeDataProvider);
    final router = ref.watch(routerProvider);
    final locale = ref.watch(localeProvider);
    final supportedLocales = ref.watch(supportedLocalesProvider);
    final localizationsDelegates = ref.watch(localizationsDelegatesProvider);

    return SystemThemeListener(
      child: MaterialApp.router(
        title: 'Portfolio',
        theme: themeData,
        themeMode: themeMode,
        routerConfig: router,
        locale: locale,
        supportedLocales: supportedLocales,
        localizationsDelegates: localizationsDelegates,
      ),
    );
  }
}
