//import 'dart:io';

import 'package:flutter/material.dart';
import 'package:supernova/UI/screens/entry_screen.dart';
import 'package:supernova/UI/screens/home_screen.dart';
import 'package:supernova/UI/screens/login_screen.dart';
import 'package:supernova/UI/screens/onboarding_screen.dart';
import 'package:supernova/UI/screens/places_screen.dart';
import 'package:supernova/UI/screens/pop_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Supernova',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 22, 2, 57)),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => EntryScreen(),
        '/onboarding': (context) => OnboardingScreen(),
        '/home': (context) => HomeScreen(),
        '/RA': (context) => PopScreen(),
        '/places': (context) => PlacesScreen(),
        '/login': (context) => LoginScreen(),
      },
    );
  }
}
