import 'package:flutter/material.dart';

class AppColors {
  // Gray (Light) Palette
  static const Color grayDefault = Color(0xFFFFFFFF);
  static const Color gray50 = Color(0xFFF9FAFB);
  static const Color gray100 = Color(0xFFF3F4F6);
  static const Color gray200 = Color(0xFFE5E7EB);
  static const Color gray300 = Color(0xFFD1D5DB);
  static const Color gray400 = Color(0xFF9CA3AF);
  static const Color gray500 = Color(0xFF6B7280);
  static const Color gray600 = Color(0xFF4B5563);
  static const Color gray700 = Color(0xFF374151);
  static const Color gray800 = Color(0xFF1F2937);
  static const Color gray900 = Color(0xFF111827);
  static const Color gray950 = Color(0xFF030712);

  // Gray (Dark) Palette
  static const Color grayDarkDefault = Color(0xFF030712);
  static const Color grayDark50 = Color(0xFF111827);
  static const Color grayDark100 = Color(0xFF1F2937);
  static const Color grayDark200 = Color(0xFF374151);
  static const Color grayDark300 = Color(0xFF4B5563);
  static const Color grayDark400 = Color(0xFF6B7280);
  static const Color grayDark500 = Color(0xFF9CA3AF);
  static const Color grayDark600 = Color(0xFFD1D5DB);
  static const Color grayDark700 = Color(0xFFE5E7EB);
  static const Color grayDark800 = Color(0xFFF3F4F6);
  static const Color grayDark900 = Color(0xFFF9FAFB);
  static const Color grayDark950 = Color(0xFFFFFFFF);

  // Emerald Palette
  static const Color emerald500 = Color(0xFF10B981);

  // Semantic Colors
  static const Color primary = emerald500;
  static const Color background = grayDefault;
  static const Color surface = gray50;
  static const Color onBackground = gray900;
  static const Color onSurface = gray800;
  static const Color onPrimary = grayDefault;

  // Dark mode semantic colors
  static const Color backgroundDark = grayDarkDefault;
  static const Color surfaceDark = grayDark50;
  static const Color onBackgroundDark = grayDark950;
  static const Color onSurfaceDark = grayDark900;
  static const Color onPrimaryDark = grayDarkDefault;

  // Additional utility colors
  static const Color divider = gray200;
  static const Color dividerDark = grayDark200;
  static const Color shadow = gray900;
  static const Color shadowDark = grayDark900;
}
