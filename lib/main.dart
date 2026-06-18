import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'features/splash/screens/splash_screen.dart';

void main() {
  runApp(const ZiaConnectApp());
}

class ZiaConnectApp extends StatelessWidget {
  const ZiaConnectApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ZIA Connect',
      theme: AppTheme.lightTheme,
      home: const SplashScreen(),
    );
  }
}
