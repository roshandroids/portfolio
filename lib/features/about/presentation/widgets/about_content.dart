import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AboutContent extends ConsumerWidget {
  const AboutContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // For smaller screens, stack vertically
        if (constraints.maxWidth < 800) {
          return Column(
            children: [
              // About Tab
              _buildAboutTab(context),

              const SizedBox(height: 32),

              // Portrait Image
              _buildPortrait(context, constraints.maxWidth * 0.8),

              const SizedBox(height: 32),

              // Text Content
              _buildTextContent(context),
            ],
          );
        }

        // For larger screens, use two-column layout
        return Column(
          children: [
            // About Tab
            _buildAboutTab(context),

            const SizedBox(height: 48),

            Expanded(
              child: Row(
                children: [
                  // Left Column - Portrait Image
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [_buildPortrait(context, 400)],
                    ),
                  ),

                  const SizedBox(width: 64),

                  // Right Column - Text Content
                  Expanded(flex: 1, child: _buildTextContent(context)),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildAboutTab(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Text(
          'About me',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w600,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
      ),
    );
  }

  Widget _buildPortrait(BuildContext context, double size) {
    return Container(
      width: size,
      height: size * 1.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.shadow.withValues(alpha: 0.1),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),
                Theme.of(context).colorScheme.primary.withValues(alpha: 0.3),
              ],
            ),
          ),
          child: Stack(
            children: [
              // Background scene elements
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: size * 0.3,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Theme.of(
                          context,
                        ).colorScheme.surface.withValues(alpha: 0.8),
                        Theme.of(context).colorScheme.surface,
                      ],
                    ),
                  ),
                ),
              ),

              // Sun rays effect
              Positioned(
                top: size * 0.1,
                right: size * 0.1,
                child: Container(
                  width: size * 0.2,
                  height: size * 0.2,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: RadialGradient(
                      colors: [
                        Theme.of(
                          context,
                        ).colorScheme.primary.withValues(alpha: 0.3),
                        Theme.of(
                          context,
                        ).colorScheme.primary.withValues(alpha: 0.1),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
              ),

              // Person silhouette
              Positioned(
                bottom: size * 0.15,
                left: size * 0.3,
                child: Container(
                  width: size * 0.4,
                  height: size * 0.6,
                  decoration: BoxDecoration(
                    color: Theme.of(
                      context,
                    ).colorScheme.onSurface.withValues(alpha: 0.8),
                    borderRadius: BorderRadius.circular(size * 0.2),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.person,
                      size: size * 0.2,
                      color: Theme.of(context).colorScheme.surface,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Main Heading
        Text(
          'Curious about me? Here you have it:',
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),

        const SizedBox(height: 24),

        // Introduction Paragraph
        RichText(
          text: TextSpan(
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
              height: 1.6,
            ),
            children: [
              const TextSpan(text: "I'm a passionate, "),
              TextSpan(
                text: 'self-proclaimed designer',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const TextSpan(
                text:
                    ' who specializes in full stack development (React.js & Node.js). I am enthusiastic about bringing the technical and visual aspects of digital products to life. User experience, pixel perfect design, and writing clear, readable, highly performant code matters to me.',
              ),
            ],
          ),
        ),

        const SizedBox(height: 24),

        // Journey Paragraph
        Text(
          "I began my journey as a web developer in 2015, and since then, I've continued to grow and evolve as a developer, taking on new challenges and learning the latest technologies along the way. Now, in my early thirties, 7 years after starting my web development journey, I'm building cutting-edge web applications using modern technologies such as Next.js, TypeScript, Nestjs, Tailwindcss, Supabase and much more.",
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
            height: 1.6,
          ),
        ),

        const SizedBox(height: 24),

        // Thinking Style Paragraph
        Text(
          'I am a progressive thinker and enjoy working on products end to end, from ideation to development.',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
            height: 1.6,
          ),
        ),

        const SizedBox(height: 24),

        // Free Time/Social Paragraph
        RichText(
          text: TextSpan(
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
              height: 1.6,
            ),
            children: [
              const TextSpan(
                text: "When I'm not in developer mode, you can find me on ",
              ),
              TextSpan(
                text: 'twitter',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const TextSpan(text: ' or on '),
              TextSpan(
                text: 'indie hacker',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const TextSpan(
                text:
                    ', witnessing startup journeys or enjoying my free time. You can follow me on ',
              ),
              TextSpan(
                text: 'Twitter',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const TextSpan(
                text:
                    ' where I share tech-related bites and build in public, or you can follow me on ',
              ),
              TextSpan(
                text: 'GitHub',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const TextSpan(text: '.'),
            ],
          ),
        ),

        const SizedBox(height: 32),

        // Quick Bits Section
        Text(
          'Finally, some quick bits about me.',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),

        const SizedBox(height: 16),

        // Quick Bits Grid
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildQuickBit(context, 'B.E. in Computer Engineering'),
                  const SizedBox(height: 8),
                  _buildQuickBit(context, 'Full time freelancer'),
                ],
              ),
            ),
            const SizedBox(width: 32),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildQuickBit(context, 'Avid learner'),
                  const SizedBox(height: 8),
                  _buildQuickBit(context, 'Aspiring indie hacker'),
                ],
              ),
            ),
          ],
        ),

        const SizedBox(height: 32),

        // Final Call to Action
        Text(
          "One last thing, I'm available for freelance work, so feel free to reach out and say hello! I promise I don't bite 😉",
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
            height: 1.6,
          ),
        ),
      ],
    );
  }

  Widget _buildQuickBit(BuildContext context, String text) {
    return Row(
      children: [
        Container(
          width: 6,
          height: 6,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
        ),
      ],
    );
  }
}
