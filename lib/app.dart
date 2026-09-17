import 'package:flutter/material.dart';
import 'features/home/presentation/home_screen.dart';

class WarungApp extends StatelessWidget {
  const WarungApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // installs theme, navigator, localisation
      title: 'Warung Digital',
      theme: ThemeData(
        colorSchemeSeed: const Color(0xFF00696E),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
