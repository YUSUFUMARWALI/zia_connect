import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const Color primaryGreen = Color(0xFF006B3F);
  static const Color lightBackground = Color(0xFFF7F9FC);

  static const Color primary = Color(0xFF1B6B3A);
  static const Color primaryLight = Color(0xFF2E8B57);
  static const Color primaryDark = Color(0xFF0D4A26);

  static const Color gold = Color(0xFFD4A017);
  static const Color goldLight = Color(0xFFE8C547);
  static const Color goldDark = Color(0xFFB8860B);

  static const Color white = Color(0xFFFFFFFF);
  static const Color background = Color(0xFFF5F7F5);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color cardBackground = Color(0xFFFFFFFF);

  static const Color textPrimary = Color(0xFF1A1A2E);
  static const Color textSecondary = Color(0xFF6B7280);
  static const Color textLight = Color(0xFF9CA3AF);
  static const Color textOnPrimary = Color(0xFFFFFFFF);

  static const Color success = Color(0xFF22C55E);
  static const Color warning = Color(0xFFF59E0B);
  static const Color error = Color(0xFFEF4444);
  static const Color info = Color(0xFF3B82F6);

  static const Color onTime = Color(0xFF22C55E);
  static const Color boarding = Color(0xFF3B82F6);
  static const Color delayed = Color(0xFFF59E0B);
  static const Color landed = Color(0xFF6B7280);
  static const Color cancelled = Color(0xFFEF4444);

  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [primary, primaryLight],
  );

  static const LinearGradient goldGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [goldDark, gold, goldLight],
  );

  static const LinearGradient bannerGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [primaryDark, primaryLight],
  );
}
