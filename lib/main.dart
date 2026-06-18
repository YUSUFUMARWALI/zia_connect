import 'package:flutter/material.dart';
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
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.green,
      ),
      home: const SplashScreen(),
    );
  }
}
