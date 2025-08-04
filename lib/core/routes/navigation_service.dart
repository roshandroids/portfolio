import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/core/routes/app_router.dart';

/// Service class to handle navigation throughout the app
class NavigationService {
  /// Navigate to home page
  static void goHome(BuildContext context) {
    context.go(AppRouter.home);
  }

  /// Navigate to about page
  static void goAbout(BuildContext context) {
    context.go(AppRouter.about);
  }

  /// Navigate to work page
  static void goWork(BuildContext context) {
    context.go(AppRouter.work);
  }

  /// Navigate to skills page
  static void goSkills(BuildContext context) {
    context.go(AppRouter.skills);
  }

  /// Navigate to experience page
  static void goExperience(BuildContext context) {
    context.go(AppRouter.experience);
  }

  /// Navigate to contact page
  static void goContact(BuildContext context) {
    context.go(AppRouter.contact);
  }

  /// Navigate to a specific route
  static void goTo(BuildContext context, String route) {
    context.go(route);
  }

  /// Navigate back
  static void goBack(BuildContext context) {
    context.pop();
  }

  /// Check if current route is home
  static bool isHome(BuildContext context) {
    return GoRouterState.of(context).uri.path == AppRouter.home;
  }

  /// Check if current route is about
  static bool isAbout(BuildContext context) {
    return GoRouterState.of(context).uri.path == AppRouter.about;
  }

  /// Check if current route is work
  static bool isWork(BuildContext context) {
    return GoRouterState.of(context).uri.path == AppRouter.work;
  }

  /// Check if current route is skills
  static bool isSkills(BuildContext context) {
    return GoRouterState.of(context).uri.path == AppRouter.skills;
  }

  /// Check if current route is experience
  static bool isExperience(BuildContext context) {
    return GoRouterState.of(context).uri.path == AppRouter.experience;
  }

  /// Check if current route is contact
  static bool isContact(BuildContext context) {
    return GoRouterState.of(context).uri.path == AppRouter.contact;
  }
}
