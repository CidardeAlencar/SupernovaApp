import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                "Explora el universo",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                "Viaja por el universo con Supernova Espacial",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                // Acción al presionar el botón
                //signIn();
                Navigator.of(context).pushNamed('/home');
                print('Botón presionado');
                // Agrega aquí la lógica adicional que deseas ejecutar al presionar el botón
              },
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Center(
                    child: Text(
                      "EMPEZAR",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            Image.asset('lib/assets/Logo.png'),
          ],
        ),
      ),
    );
  }
}
