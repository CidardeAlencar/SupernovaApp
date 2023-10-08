import 'package:flutter/material.dart';

class Marte extends StatefulWidget {
  const Marte({super.key});

  @override
  State<Marte> createState() => _MarteState();
}

class _MarteState extends State<Marte> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: 350,
            height: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromRGBO(255, 185, 182, 1),
            ),
            child: Column(
              children: [
                SizedBox(
                  //height: 380,
                  //width: 270,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Image.asset('lib/assets/Mars.png'),
                  ),
                ),
                const SizedBox(
                  //width: 230,
                  child: Text(
                    "Planeta Marte",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w800,
                      letterSpacing: -1,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 11,
                ),
                const SizedBox(
                  width: 250,
                  child: Text(
                    "El Planeta Rojo con paisajes desérticos y evidencia de antiguos ríos y volcanes, lo que lo convierte en un objetivo para la búsqueda de vida pasada o presente.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      letterSpacing: -1,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xff1D99B5),
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.white, width: 2.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: const Offset(7, 7),
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 32,
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
