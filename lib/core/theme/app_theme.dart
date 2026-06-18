import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorSchemeSeed: AppColors.primaryGreen,
    scaffoldBackgroundColor: AppColors.lightBackground,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: AppColors.primaryGreen,
      foregroundColor: Colors.white,
    ),
  );
}
