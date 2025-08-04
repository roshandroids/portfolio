import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/features/home/presentation/widgets/home_header.dart';

class WorkPage extends ConsumerWidget {
  const WorkPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: const SafeArea(
        child: Column(
          children: [
            // Header
            HomeHeader(),

            // // Main Content
            // Expanded(
            //   child: Padding(
            //     padding: const EdgeInsets.symmetric(horizontal: 24.0),
            //     child: WorkContent(),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
