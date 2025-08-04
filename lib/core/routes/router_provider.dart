import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/core/routes/app_router.dart';

/// Provider for the GoRouter instance
final routerProvider = Provider<GoRouter>((ref) {
  return AppRouter.router;
});
