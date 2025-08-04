import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTypography {
  // Font family
  static const String fontFamily = 'Inter';

  // Font weights
  static const FontWeight normal = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;

  // Letter spacing
  static const double letterSpacingTight = -0.02; // -2%

  // Responsive text styles
  static TextTheme get textTheme {
    return TextTheme(
      // Heading H1
      displayLarge: GoogleFonts.inter(
        fontSize: 60,
        height: 1.2, // 72px / 60px
        letterSpacing: letterSpacingTight,
        fontWeight: bold,
      ),

      // Heading H2
      displayMedium: GoogleFonts.inter(
        fontSize: 36,
        height: 1.11, // 40px / 36px
        letterSpacing: letterSpacingTight,
        fontWeight: semiBold,
      ),

      // Heading H3
      displaySmall: GoogleFonts.inter(
        fontSize: 30,
        height: 1.2, // 36px / 30px
        letterSpacing: letterSpacingTight,
        fontWeight: semiBold,
      ),

      // Subtitle
      headlineMedium: GoogleFonts.inter(
        fontSize: 20,
        height: 1.4, // 28px / 20px
        fontWeight: normal,
      ),

      // Body1
      bodyLarge: GoogleFonts.inter(
        fontSize: 18,
        height: 1.56, // 28px / 18px
        fontWeight: normal,
      ),

      // Body2
      bodyMedium: GoogleFonts.inter(
        fontSize: 16,
        height: 1.5, // 24px / 16px
        fontWeight: normal,
      ),

      // Body3
      bodySmall: GoogleFonts.inter(
        fontSize: 14,
        height: 1.43, // 20px / 14px
        fontWeight: normal,
      ),
    );
  }

  // Tablet & Mobile text styles
  static TextTheme get tabletMobileTextTheme {
    return TextTheme(
      // Heading H1 (Tablet & Mobile)
      displayLarge: GoogleFonts.inter(
        fontSize: 48, // Tablet: 48px, Mobile: 36px
        height: 1.0, // Tablet: 48px / 48px, Mobile: 40px / 36px
        letterSpacing: letterSpacingTight,
        fontWeight: bold, // Tablet: bold, Mobile: semiBold
      ),

      // Heading H2 (Tablet & Mobile)
      displayMedium: GoogleFonts.inter(
        fontSize: 18,
        height: 1.56, // 28px / 18px
        letterSpacing: letterSpacingTight,
        fontWeight: semiBold,
      ),

      // Heading H3 (Tablet & Mobile)
      displaySmall: GoogleFonts.inter(
        fontSize: 24,
        height: 1.33, // 32px / 24px
        letterSpacing: letterSpacingTight,
        fontWeight: semiBold,
      ),

      // Subtitle (Tablet & Mobile)
      headlineMedium: GoogleFonts.inter(
        fontSize: 18,
        height: 1.56, // 28px / 18px
        fontWeight: normal,
      ),

      // Body1 (Tablet & Mobile)
      bodyLarge: GoogleFonts.inter(
        fontSize: 16,
        height: 1.5, // 24px / 16px
        fontWeight: normal,
      ),

      // Body2 (Tablet & Mobile)
      bodyMedium: GoogleFonts.inter(
        fontSize: 16,
        height: 1.5, // 24px / 16px
        fontWeight: normal,
      ),

      // Body3 (Tablet & Mobile)
      bodySmall: GoogleFonts.inter(
        fontSize: 14,
        height: 1.43, // 20px / 14px
        fontWeight: normal,
      ),
    );
  }

  // Mobile-specific text styles
  static TextTheme get mobileTextTheme {
    return TextTheme(
      // Heading H1 (Mobile)
      displayLarge: GoogleFonts.inter(
        fontSize: 36,
        height: 1.11, // 40px / 36px
        fontWeight: semiBold, // Mobile uses semiBold instead of bold
      ),

      // Heading H2 (Mobile)
      displayMedium: GoogleFonts.inter(
        fontSize: 18,
        height: 1.56, // 28px / 18px
        letterSpacing: letterSpacingTight,
        fontWeight: semiBold,
      ),

      // Heading H3 (Mobile)
      displaySmall: GoogleFonts.inter(
        fontSize: 24,
        height: 1.33, // 32px / 24px
        letterSpacing: letterSpacingTight,
        fontWeight: semiBold,
      ),

      // Subtitle (Mobile)
      headlineMedium: GoogleFonts.inter(
        fontSize: 18,
        height: 1.56, // 28px / 18px
        fontWeight: normal,
      ),

      // Body1 (Mobile)
      bodyLarge: GoogleFonts.inter(
        fontSize: 16,
        height: 1.5, // 24px / 16px
        fontWeight: normal,
      ),

      // Body2 (Mobile)
      bodyMedium: GoogleFonts.inter(
        fontSize: 16,
        height: 1.5, // 24px / 16px
        fontWeight: normal,
      ),

      // Body3 (Mobile)
      bodySmall: GoogleFonts.inter(
        fontSize: 14,
        height: 1.43, // 20px / 14px
        fontWeight: normal,
      ),
    );
  }

  // Custom text styles with different weights
  static TextStyle get headingH1Bold => GoogleFonts.inter(
    fontSize: 60,
    height: 1.2,
    letterSpacing: letterSpacingTight,
    fontWeight: bold,
  );

  static TextStyle get headingH1SemiBold => GoogleFonts.inter(
    fontSize: 60,
    height: 1.2,
    letterSpacing: letterSpacingTight,
    fontWeight: semiBold,
  );

  static TextStyle get headingH2SemiBold => GoogleFonts.inter(
    fontSize: 36,
    height: 1.11,
    letterSpacing: letterSpacingTight,
    fontWeight: semiBold,
  );

  static TextStyle get headingH3Bold => GoogleFonts.inter(
    fontSize: 30,
    height: 1.2,
    letterSpacing: letterSpacingTight,
    fontWeight: bold,
  );

  static TextStyle get headingH3SemiBold => GoogleFonts.inter(
    fontSize: 30,
    height: 1.2,
    letterSpacing: letterSpacingTight,
    fontWeight: semiBold,
  );

  static TextStyle get subtitleNormal =>
      GoogleFonts.inter(fontSize: 20, height: 1.4, fontWeight: normal);

  static TextStyle get subtitleSemiBold =>
      GoogleFonts.inter(fontSize: 20, height: 1.4, fontWeight: semiBold);

  static TextStyle get body1Normal =>
      GoogleFonts.inter(fontSize: 18, height: 1.56, fontWeight: normal);

  static TextStyle get body2Normal =>
      GoogleFonts.inter(fontSize: 16, height: 1.5, fontWeight: normal);

  static TextStyle get body2Medium =>
      GoogleFonts.inter(fontSize: 16, height: 1.5, fontWeight: medium);

  static TextStyle get body2SemiBold =>
      GoogleFonts.inter(fontSize: 16, height: 1.5, fontWeight: semiBold);

  static TextStyle get body2Underline => GoogleFonts.inter(
    fontSize: 16,
    height: 1.5,
    fontWeight: normal,
    decoration: TextDecoration.underline,
  );

  static TextStyle get body3Normal =>
      GoogleFonts.inter(fontSize: 14, height: 1.43, fontWeight: normal);

  static TextStyle get body3Medium =>
      GoogleFonts.inter(fontSize: 14, height: 1.43, fontWeight: medium);

  // Responsive text style getter
  static TextStyle getResponsiveTextStyle({
    required TextStyle desktop,
    required TextStyle tablet,
    required TextStyle mobile,
  }) {
    // This would be used with MediaQuery to determine screen size
    // For now, return desktop style
    return desktop;
  }
}
