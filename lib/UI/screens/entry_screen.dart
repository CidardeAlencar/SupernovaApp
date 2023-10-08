import 'package:flutter/material.dart';

class EntryScreen extends StatefulWidget {
  const EntryScreen({super.key});

  @override
  State<EntryScreen> createState() => _EntryScreenState();
}

class _EntryScreenState extends State<EntryScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/onboarding');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'lib/assets/homeBackground.png'), // Asegúrate de tener esta imagen en la ubicación especificada
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            width: 250,
            child: Image.asset('lib/assets/Logo.png'),
          ),
        ),
      ),
    );
  }
}
