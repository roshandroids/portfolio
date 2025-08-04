import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/features/about/presentation/pages/about_page.dart';
import 'package:portfolio/features/experience/presentation/pages/experience_page.dart';
import 'package:portfolio/features/home/presentation/pages/home_page.dart';
import 'package:portfolio/features/projects/presentation/pages/work_page.dart';
import 'package:portfolio/features/skills/presentation/pages/skills_page.dart';

class AppRouter {
  static const String home = '/';
  static const String about = '/about';
  static const String work = '/work';
  static const String skills = '/skills';
  static const String experience = '/experience';
  static const String contact = '/contact';

  static GoRouter get router => GoRouter(
    initialLocation: home,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: home,
        name: 'home',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: about,
        name: 'about',
        builder: (context, state) => const AboutPage(),
      ),
      GoRoute(
        path: work,
        name: 'work',
        builder: (context, state) => const WorkPage(),
      ),
      GoRoute(
        path: skills,
        name: 'skills',
        builder: (context, state) => const SkillsPage(),
      ),
      GoRoute(
        path: experience,
        name: 'experience',
        builder: (context, state) => const ExperiencePage(),
      ),
      GoRoute(
        path: contact,
        name: 'contact',
        builder: (context, state) => const Scaffold(
          body: Center(child: Text('Contact Page - Coming Soon')),
        ),
      ),
    ],
    errorBuilder: (context, state) => _buildErrorPage(context, state),
  );

  static Widget _buildErrorPage(BuildContext context, GoRouterState state) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page Not Found')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 64, color: Colors.grey),
            const SizedBox(height: 16),
            Text(
              'Page not found',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            Text(
              'The page "${state.uri}" could not be found.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => context.go(AppRouter.home),
              child: const Text('Go Home'),
            ),
          ],
        ),
      ),
    );
  }
}
