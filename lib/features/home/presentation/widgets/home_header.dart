import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/core/localization/app_localizations.dart';
import 'package:portfolio/core/localization/widgets/language_selector.dart';
import 'package:portfolio/core/routes/app_router.dart';
import 'package:portfolio/core/routes/navigation_service.dart';
import 'package:portfolio/core/theme/widgets/theme_toggle.dart';

class HomeHeader extends ConsumerWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);

    return LayoutBuilder(
      builder: (context, constraints) {
        final isSmallScreen = constraints.maxWidth < 768;

        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
          child: Row(
            children: [
              // Logo
              GestureDetector(
                onTap: () => NavigationService.goHome(context),
                child: Text(
                  '<SS />',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ),

              const Spacer(),

              // Navigation Links (hidden on small screens)
              if (!isSmallScreen) ...[
                Row(
                  children: [
                    _buildNavLink(context, l10n.about, AppRouter.about),
                    const SizedBox(width: 32),
                    _buildNavLink(context, l10n.work, AppRouter.work),
                    const SizedBox(width: 32),
                    _buildNavLink(context, l10n.skills, AppRouter.skills),
                    const SizedBox(width: 32),
                    _buildNavLink(
                      context,
                      l10n.experience,
                      AppRouter.experience,
                    ),
                    const SizedBox(width: 32),
                    _buildNavLink(context, l10n.contact, AppRouter.contact),
                  ],
                ),

                const SizedBox(width: 32),
              ],

              // Language Selector
              const LanguageSelector(),

              const SizedBox(width: 16),

              // Theme Toggle
              const ThemeToggle(),

              const SizedBox(width: 16),

              // Download CV Button
              ElevatedButton(
                onPressed: () {
                  // TODO: Implement CV download functionality
                },
                child: Text(l10n.downloadCV),
              ),

              // Hamburger Menu for small screens
              if (isSmallScreen) ...[
                const SizedBox(width: 16),
                IconButton(
                  onPressed: () {
                    _showMobileMenu(context);
                  },
                  icon: Icon(
                    Icons.menu,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ],
            ],
          ),
        );
      },
    );
  }

  Widget _buildNavLink(BuildContext context, String text, String route) {
    return TextButton(
      onPressed: () {
        NavigationService.goTo(context, route);
      },
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
          color: Theme.of(context).colorScheme.onSurface,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  void _showMobileMenu(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildMobileNavLink(context, l10n.about, AppRouter.about),
            const SizedBox(height: 16),
            _buildMobileNavLink(context, l10n.work, AppRouter.work),
            const SizedBox(height: 16),
            _buildMobileNavLink(context, l10n.skills, AppRouter.skills),
            const SizedBox(height: 16),
            _buildMobileNavLink(context, l10n.experience, AppRouter.experience),
            const SizedBox(height: 16),
            _buildMobileNavLink(context, l10n.contact, AppRouter.contact),
          ],
        ),
      ),
    );
  }

  Widget _buildMobileNavLink(BuildContext context, String text, String route) {
    return ListTile(
      onTap: () {
        Navigator.pop(context);
        NavigationService.goTo(context, route);
      },
      title: Text(
        text,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
          color: Theme.of(context).colorScheme.onSurface,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
