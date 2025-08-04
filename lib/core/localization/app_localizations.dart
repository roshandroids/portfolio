import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = [
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ];

  static const List<Locale> supportedLocales = [
    Locale('en', ''), // English
    Locale('fr', ''), // French
  ];

  // Localized strings
  String get appTitle => _localizedValues[locale.languageCode]!['appTitle']!;
  String get home => _localizedValues[locale.languageCode]!['home']!;
  String get about => _localizedValues[locale.languageCode]!['about']!;
  String get work => _localizedValues[locale.languageCode]!['work']!;
  String get skills => _localizedValues[locale.languageCode]!['skills']!;
  String get experience =>
      _localizedValues[locale.languageCode]!['experience']!;
  String get contact => _localizedValues[locale.languageCode]!['contact']!;
  String get downloadCV =>
      _localizedValues[locale.languageCode]!['downloadCV']!;

  // Home page
  String get greeting => _localizedValues[locale.languageCode]!['greeting']!;
  String get introduction =>
      _localizedValues[locale.languageCode]!['introduction']!;
  String get location => _localizedValues[locale.languageCode]!['location']!;
  String get availableForProjects =>
      _localizedValues[locale.languageCode]!['availableForProjects']!;

  // About page
  String get aboutMe => _localizedValues[locale.languageCode]!['aboutMe']!;
  String get aboutSubtitle =>
      _localizedValues[locale.languageCode]!['aboutSubtitle']!;
  String get aboutIntroduction =>
      _localizedValues[locale.languageCode]!['aboutIntroduction']!;
  String get aboutJourney =>
      _localizedValues[locale.languageCode]!['aboutJourney']!;
  String get aboutThinking =>
      _localizedValues[locale.languageCode]!['aboutThinking']!;
  String get aboutSocial =>
      _localizedValues[locale.languageCode]!['aboutSocial']!;
  String get aboutQuickBits =>
      _localizedValues[locale.languageCode]!['aboutQuickBits']!;
  String get aboutCallToAction =>
      _localizedValues[locale.languageCode]!['aboutCallToAction']!;

  // Skills page
  String get skillsSubtitle =>
      _localizedValues[locale.languageCode]!['skillsSubtitle']!;

  // Experience page
  String get experienceSubtitle =>
      _localizedValues[locale.languageCode]!['experienceSubtitle']!;

  // Work page
  String get workSubtitle =>
      _localizedValues[locale.languageCode]!['workSubtitle']!;
  String get viewProject =>
      _localizedValues[locale.languageCode]!['viewProject']!;

  // Error page
  String get pageNotFound =>
      _localizedValues[locale.languageCode]!['pageNotFound']!;
  String get goHome => _localizedValues[locale.languageCode]!['goHome']!;

  static final Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'appTitle': 'Portfolio',
      'home': 'Home',
      'about': 'About',
      'work': 'Work',
      'skills': 'Skills',
      'experience': 'Experience',
      'contact': 'Contact',
      'downloadCV': 'Download CV',
      'greeting': "Hi, I'm Sagar",
      'introduction':
          "I'm a full stack developer (React.js & Node.js) with a focus on creating (and occasionally designing) exceptional digital experiences that are fast, accessible, visually appealing, and responsive. Even though I have been creating web applications for over 7 years, I still love it as if it was something new.",
      'location': 'Ahmedabad, India',
      'availableForProjects': 'Available for new projects',
      'aboutMe': 'About me',
      'aboutSubtitle': 'Curious about me? Here you have it:',
      'aboutIntroduction':
          "I'm a passionate, self-proclaimed designer who specializes in full stack development (React.js & Node.js). I am enthusiastic about bringing the technical and visual aspects of digital products to life. User experience, pixel perfect design, and writing clear, readable, highly performant code matters to me.",
      'aboutJourney':
          "I began my journey as a web developer in 2015, and since then, I've continued to grow and evolve as a developer, taking on new challenges and learning the latest technologies along the way. Now, in my early thirties, 7 years after starting my web development journey, I'm building cutting-edge web applications using modern technologies such as Next.js, TypeScript, Nestjs, Tailwindcss, Supabase and much more.",
      'aboutThinking':
          'I am a progressive thinker and enjoy working on products end to end, from ideation to development.',
      'aboutSocial':
          "When I'm not in developer mode, you can find me on twitter or on indie hacker, witnessing startup journeys or enjoying my free time. You can follow me on Twitter where I share tech-related bites and build in public, or you can follow me on GitHub.",
      'aboutQuickBits': 'Finally, some quick bits about me.',
      'aboutCallToAction':
          "One last thing, I'm available for freelance work, so feel free to reach out and say hello! I promise I don't bite 😉",
      'skillsSubtitle':
          'The skills, tools and technologies I am really good at:',
      'experienceSubtitle':
          'Here is a quick summary of my most recent experiences:',
      'workSubtitle': 'Some of the noteworthy projects I have built:',
      'viewProject': 'View Project',
      'pageNotFound': 'Page not found',
      'goHome': 'Go Home',
    },
    'fr': {
      'appTitle': 'Portfolio',
      'home': 'Accueil',
      'about': 'À propos',
      'work': 'Travaux',
      'skills': 'Compétences',
      'experience': 'Expérience',
      'contact': 'Contact',
      'downloadCV': 'Télécharger CV',
      'greeting': 'Bonjour, je suis Sagar',
      'introduction':
          'Je suis un développeur full stack (React.js & Node.js) spécialisé dans la création d\'expériences numériques exceptionnelles qui sont rapides, accessibles, visuellement attrayantes et responsives. Même si je crée des applications web depuis plus de 7 ans, j\'aime toujours cela comme si c\'était quelque chose de nouveau.',
      'location': 'Ahmedabad, Inde',
      'availableForProjects': 'Disponible pour nouveaux projets',
      'aboutMe': 'À propos de moi',
      'aboutSubtitle':
          'Curieux de me connaître ? Voici ce que vous devez savoir :',
      'aboutIntroduction':
          'Je suis un passionné, un designer autoproclamé qui se spécialise dans le développement full stack (React.js & Node.js). Je suis enthousiaste à l\'idée de donner vie aux aspects techniques et visuels des produits numériques. L\'expérience utilisateur, le design pixel parfait et l\'écriture de code clair, lisible et hautement performant m\'importent.',
      'aboutJourney':
          'J\'ai commencé mon parcours en tant que développeur web en 2015, et depuis lors, j\'ai continué à grandir et évoluer en tant que développeur, en relevant de nouveaux défis et en apprenant les dernières technologies. Maintenant, au début de la trentaine, 7 ans après avoir commencé mon parcours de développement web, je construis des applications web de pointe en utilisant des technologies modernes telles que Next.js, TypeScript, Nestjs, Tailwindcss, Supabase et bien plus encore.',
      'aboutThinking':
          'Je suis un penseur progressiste et j\'aime travailler sur des produits de bout en bout, de l\'idéation au développement.',
      'aboutSocial':
          'Quand je ne suis pas en mode développeur, vous pouvez me trouver sur Twitter ou sur Indie Hacker, témoin de parcours de startups ou profitant de mon temps libre. Vous pouvez me suivre sur Twitter où je partage des informations techniques et construis en public, ou vous pouvez me suivre sur GitHub.',
      'aboutQuickBits': 'Enfin, quelques informations rapides sur moi.',
      'aboutCallToAction':
          'Une dernière chose, je suis disponible pour du travail freelance, alors n\'hésitez pas à me contacter et à dire bonjour ! Je promets que je ne mords pas 😉',
      'skillsSubtitle':
          'Les compétences, outils et technologies dans lesquels je suis vraiment bon :',
      'experienceSubtitle':
          'Voici un résumé rapide de mes expériences les plus récentes :',
      'workSubtitle':
          'Quelques-uns des projets notables que j\'ai construits :',
      'viewProject': 'Voir le projet',
      'pageNotFound': 'Page non trouvée',
      'goHome': 'Aller à l\'accueil',
    },
  };
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'fr'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    return AppLocalizations(locale);
  }

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}
