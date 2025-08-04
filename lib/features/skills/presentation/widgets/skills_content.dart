import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SkillsContent extends ConsumerWidget {
  const SkillsContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          children: [
            // Skills Tab
            _buildSkillsTab(context),

            const SizedBox(height: 32),

            // Subtitle
            _buildSubtitle(context),

            const SizedBox(height: 48),

            // Skills Grid
            Expanded(child: _buildSkillsGrid(context)),
          ],
        );
      },
    );
  }

  Widget _buildSkillsTab(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Text(
          'Skills',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w600,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
      ),
    );
  }

  Widget _buildSubtitle(BuildContext context) {
    return Center(
      child: Text(
        'The skills, tools and technologies I am really good at:',
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
          color: Theme.of(context).colorScheme.onSurfaceVariant,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildSkillsGrid(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isSmallScreen = constraints.maxWidth < 600;
        final isMediumScreen = constraints.maxWidth < 900;
        final crossAxisCount = isSmallScreen ? 2 : (isMediumScreen ? 3 : 4);
        final childAspectRatio = isSmallScreen
            ? 1.2
            : (isMediumScreen ? 1.3 : 1.5);

        return GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            childAspectRatio: childAspectRatio,
            crossAxisSpacing: 24,
            mainAxisSpacing: 32,
          ),
          itemCount: skills.length,
          itemBuilder: (context, index) {
            return _buildSkillItem(context, skills[index]);
          },
        );
      },
    );
  }

  Widget _buildSkillItem(BuildContext context, Skill skill) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Skill Icon
        Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            color: skill.iconColor,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: skill.iconColor.withValues(alpha: 0.3),
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Center(child: skill.icon),
        ),

        const SizedBox(height: 12),

        // Skill Name
        Text(
          skill.name,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class Skill {
  final String name;
  final Widget icon;
  final Color iconColor;

  const Skill({
    required this.name,
    required this.icon,
    required this.iconColor,
  });
}

final List<Skill> skills = [
  // Row 1
  const Skill(
    name: 'Javascript',
    icon: Text(
      'JS',
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    ),
    iconColor: Color(0xFFF7DF1E), // JavaScript yellow
  ),
  const Skill(
    name: 'Typescript',
    icon: Text(
      'TS',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    ),
    iconColor: Color(0xFF3178C6), // TypeScript blue
  ),
  const Skill(
    name: 'React',
    icon: Icon(Icons.science, color: Colors.white, size: 24),
    iconColor: Color(0xFF61DAFB), // React blue
  ),
  const Skill(
    name: 'Next.js',
    icon: Text(
      'N',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    ),
    iconColor: Colors.black,
  ),
  const Skill(
    name: 'Node.js',
    icon: Text(
      'JS',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    ),
    iconColor: Color(0xFF339933), // Node.js green
  ),
  const Skill(
    name: 'Express.js',
    icon: Text(
      'ex',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    ),
    iconColor: Colors.black,
  ),
  const Skill(
    name: 'Nest.js',
    icon: Icon(Icons.flutter_dash, color: Colors.white, size: 24),
    iconColor: Color(0xFFE0234E), // Nest.js red
  ),
  const Skill(
    name: 'Socket.io',
    icon: Icon(Icons.flash_on, color: Colors.white, size: 24),
    iconColor: Colors.black,
  ),

  // Row 2
  const Skill(
    name: 'PostgreSQL',
    icon: Icon(Icons.storage, color: Colors.white, size: 24),
    iconColor: Color(0xFF336791), // PostgreSQL blue
  ),
  const Skill(
    name: 'MongoDB',
    icon: Icon(Icons.eco, color: Colors.white, size: 24),
    iconColor: Color(0xFF47A248), // MongoDB green
  ),
  const Skill(
    name: 'Sass/Scss',
    icon: Text(
      'Sass',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
    ),
    iconColor: Color(0xFFCF649A), // Sass pink
  ),
  const Skill(
    name: 'Tailwindcss',
    icon: Icon(Icons.air, color: Colors.white, size: 24),
    iconColor: Color(0xFF06B6D4), // Tailwind blue
  ),
  Skill(
    name: 'Figma',
    icon: Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xFFF24E1E),
            Color(0xFFFF7262),
            Color(0xFFA259FF),
            Color(0xFF1ABCFE),
            Color(0xFF0ACF83),
          ],
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      child: const Center(
        child: Text(
          'F',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    ),
    iconColor: Colors.transparent,
  ),
  const Skill(
    name: 'Cypress',
    icon: Text(
      'cy',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    ),
    iconColor: Color(0xFF17202C), // Cypress dark
  ),
  const Skill(
    name: 'Storybook',
    icon: Text(
      'S',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    ),
    iconColor: Color(0xFFFF4785), // Storybook pink
  ),
  const Skill(
    name: 'Git',
    icon: Icon(Icons.call_split, color: Colors.white, size: 24),
    iconColor: Color(0xFFF05032), // Git orange
  ),
];
