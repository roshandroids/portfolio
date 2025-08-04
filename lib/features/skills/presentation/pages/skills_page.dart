import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/features/home/presentation/widgets/home_header.dart';
import 'package:portfolio/features/skills/presentation/widgets/skills_content.dart';

class SkillsPage extends ConsumerWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: const SafeArea(
        child: Column(
          children: [
            // Header
            HomeHeader(),

            // Main Content
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: SkillsContent(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
