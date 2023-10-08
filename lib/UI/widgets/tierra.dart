import 'package:flutter/material.dart';

class Tierra extends StatefulWidget {
  const Tierra({super.key});

  @override
  State<Tierra> createState() => _TierraState();
}

class _TierraState extends State<Tierra> {
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
              color: Color.fromRGBO(182, 243, 255, 1),
            ),
            child: Column(
              children: [
                SizedBox(
                  //height: 380,
                  //width: 270,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Image.asset('lib/assets/Earth.png'),
                  ),
                ),
                const SizedBox(
                  //width: 230,
                  child: Text(
                    "Planeta tierra",
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
                  width: 300,
                  child: Text(
                    "El único planeta conocido con vida, caracterizado por su agua líquida y una variedad de ecosistemas que la hacen único en el sistema solar.",
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
                  onTap: () {
                    Navigator.of(context).pushNamed('/RA');
                  },
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
